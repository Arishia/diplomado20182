# Reporte técnico
   El proyecto entregado por el cliente compilaba correctamente pero al intentar abrirse la aplicación no se ejecutaba.   

Al revisar el proyecto, en el archivo *Main.storyboard* me percate que en el esquema del documento mostraba dos botones y dos campos de texto.
Por lo que borre un botón y un campo de texto que se encontraban demás. Al compilar de nuevo marcaba el error: **signal SIGABRT** y la depuración de código marcaba que no se estaba cumpliendo la relación entre la variable del controlador con su vista.

Al revisar el archivo *ViewController.swift* me di cuenta que la vista no estaba enlazado con el controlador por lo que procedi a realizar este enlazado.
Para ello agregué la palabra *@IBOutlet* a las variables que estarían ligadas con los modelos y *@IBAction* para la acción que el botón y de esta forma aparecieran en el *Main.storyboard* y así poder hacer el enlace.

Una vez hecho esto prosegui a hacer la conexión entre el label *Outtlet Text* con la variable *outtletText* y el botón *Aoutlet Button* con la variable *aoutletButton*. Al compilar y ejecutar la aplicación esta se mostraba pero no hacia nada a presionar el botón, ya que faltaba ligar la acción de este con el controlador.
Para ello se agregó *@IBAction* para poder visualizar esta acción en el *Main.storyBoard* y poder ligarlo con la función del *ViewController.swift*.

Una vez ligado esto, y ejecutar la aplicación esta ya funcionaba correctamente. Sólo hizo falta ajustar el bóton y el campo de texto con constrainst para poder visualizarlo en el centro como mencionaban los requerimientos del cliente.

Yo considero que es muy importante revisar las conexiones entre nuestro modelo y nuestro controlador en la sección de *Referencing Outletls*, ya que si no son enlazadas correctamente nos puede lanzar un mensaje que no siempre es intuitivo, para ver si están enlazados correctamente, podemos apoyarnos en el circulito que aparece a un lado de la variable o del nombre de la función.
Este círculo se marca en gris cuando ya esta enlazado a un modelo y cuando no, se muestra sin relleno. Y desde el storyboard podemos ver en el inspector de conexiones el enlace de nuestro modelo con el controlador, de la misma forma se debe asegurar que solo se ligo una vez y a la variable o función correcta y sólo una vez, ya que puede estar duplicada la conexión y esto también marcará error.
