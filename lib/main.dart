import 'package:flutter/material.dart';
import 'services/clima_service.dart';

void main() {
  runApp(const ClimaApp());
}

class ClimaApp extends StatelessWidget {
  const ClimaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clima Atual',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ClimaPage(),
    );
  }
}

class ClimaPage extends StatefulWidget {
  const ClimaPage({super.key});

  @override
  State<ClimaPage> createState() => _ClimaPageState();
}

class _ClimaPageState extends State<ClimaPage> {
  final ClimaService climaService = ClimaService();

  double? temperatura;
  bool carregando = false;
  String? erro;

  Future<void> buscarTemperatura() async {
    setState(() {
      carregando = true;
      erro = null;
    });

    try {
      final resultado = await climaService.buscarTemperatura();

      setState(() {
        temperatura = resultado;
        carregando = false;
      });
    } catch (e) {
      setState(() {
        erro = 'Erro ao buscar temperatura.';
        carregando = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FB),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 500,
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.wb_sunny_rounded,
                    size: 55,
                    color: Color(0xFF1976D2),
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    'Clima Atual',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF172B4D),
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Consulte a temperatura em tempo real',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF6B778C),
                    ),
                  ),

                  const SizedBox(height: 30),

                  Container(
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: Color(0xFF1976D2),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'Recife, PE',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF172B4D),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 30),

                        Container(
                          width: 110,
                          height: 110,
                          decoration: const BoxDecoration(
                            color: Color(0xFFE8F2FF),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.wb_sunny_rounded,
                            size: 60,
                            color: Color(0xFFFFB300),
                          ),
                        ),

                        const SizedBox(height: 25),

                        if (carregando)
                          const Column(
                            children: [
                              CircularProgressIndicator(
                                color: Color(0xFF1976D2),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Carregando...',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF6B778C),
                                ),
                              ),
                            ],
                          )
                        else if (erro != null)
                          Text(
                            erro!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
                            ),
                          )
                        else
                          Text(
                            temperatura == null
                                ? '-- °C'
                                : '${temperatura!.toStringAsFixed(1)} °C',
                            style: const TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF172B4D),
                            ),
                          ),

                        const SizedBox(height: 8),

                        if (!carregando && erro == null)
                          const Text(
                            'Temperatura atual',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF6B778C),
                            ),
                          ),

                        const SizedBox(height: 30),

                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton.icon(
                            onPressed:
                                carregando ? null : buscarTemperatura,
                            icon: const Icon(
                              Icons.search_rounded,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Buscar temperatura',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF1976D2),
                              disabledBackgroundColor:
                                  const Color(0xFF90CAF9),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  const Text(
                    'Dados meteorológicos fornecidos pela Open-Meteo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF8A94A6),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}