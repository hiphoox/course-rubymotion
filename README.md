
Official training material for RubyMotion
=========================================

Schedule 

9:00  a 9:15  Logistica
9:15  a 10:15 01
10:15 a 11:45 02

11:45 a 12:00 RECESO
12:00 a 13:00 03

13:00 a 14:00 Comida
14:00 a 14:30 03
14:30 a 15:30 04
15:30 a 17:00 05


* 01  Historia de evolución del Sistema Operativo (NeXt, OSX, iOS), Arquitectura (subsistemas), Windows & events, Ciclo de vida. (1 hora)

* 02  setup del ambiente, Linea de comandos, estructura de un proyecto de RM, REPL, GDB, Simulador y el Device.   30 minutos
+  Ejercicio: Convertidor de Horarios                                      1 hora
+  Cerrar con explicación de deployment

* 03  Historia de RubyMotion, Arquitectura, modelo de Objectos, parametros nombrados                1 Hora
 + Ejercicios NSString, NSArray, NSDictionary, Extender clases de Objective-C, conversión de nombres.      30 minutos
 + Estimator

* 04  BridgeSupport                                               30 minutos
  + Ejercicio Estimator 2                                           30 minutos

* 05  Arquitectura                                                40 minutos
  + Ejercicio ViewController, Importar un framework                               50 minutos
  + Proximo evento


* 06  Teoria                                                    30 minutos

* 07  Teoria                                                    30 minutos
  + Ejercicio Primera pantalla mapa                                                   
  + Ejercicio Se visualiza                                          45 minutos

* 08  Teoria                                                    1 hora
  + Ejercicio Custom View para Calendario de dias que faltan                          1 hora

* 09  Teoria                                                    45 minutos
  + Ejercicio Cuanto días faltan, localización, validar existencia de elementos, correr flujo         1 hora

* 10 Teoria                                                   45 minutos
  + Ejercicio                                                 45 minutos


quit
exit
repl()
sessions
String.ancestors
methods
class
superclass
rake clean and rake clean=1
methods.grep(/class/)
instance_variables
UIApplication.sharedApplication.keyWindow.rootViewController.instance_eval{window}
UIApplication.sharedApplication.keyWindow.rootViewController.view.subviews
methods.includes?(:class)
[].include? :[]
[].methods.include? :[]
[1].methods.include? :[]
[1].methods.include?(:[])
self.class.class_methods
[1].methods.include?(:'objectAtIndex:')
UIApplication.sharedApplication.keyWindow.resursiveDescription



Explain the relatioship between objective-C init and Ruby initialize
Move the explanation about protocols to the Cocoa Overview Chapter
Fix typos
Add some slides for the Testing Chapter and explain/run the Counter example
I need to check about the images and resources directory when you use IB and Rubymotion
Necesitamos agregar una explicacion en el capitulo 15 sobre el tema de las versiones en del sistema operativo, el target, el device, diferencias en el API
Necesitamos explicar que lo de la bateria no funciona en el simulador.
Necesitamos crear los slides del CollectionView
A partir del capitulo 16 ya debemos escribir los proyectos usando mas ruby sintaxis en lugar de Objective-C sintaxis. Para que sirva como ejemplo de una aplicación completa bien hecha.

We need to change the 
Please add the following ruby files to the app folder: root_view_utilities.rb and time_offset.rb which help us in this chapter.
to 
Please copy the following ruby files from the resources directory to the app folder: root_view_utilities.rb and time_offset.rb which help us in this chapter

In the UI_Elements module of the workbook we need to add a line of code in the time_label method

We need to simplify the examples. Explain more about the topics. Start at the exact time. 