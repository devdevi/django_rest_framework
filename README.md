```
docker build

```
### cookiecutter
Genera codigo template y luego puedes basar tu proyecto en algun cookiecutter.
# Herencia de modelos
Es lo mismo que la herencia de clases, solo que las clases heredan de django.db.models
La herencia de modelos puede ser útil porque podemos tener datos generales que pueden ser heradatos por otras que no necesariamente tienen una tabla, porque queremos que haya herencia de múltiples tablas que se reflejan en la base de datos o porque queremos extender la funcionalidad de un modelo.
- EXTENDER FUNCIONALIDAD DE UN MODELO
- **Clases abstractas**:
```
   clase meta:
      abstract = true
```
no se refleja en la base de datos
- **Propiedades meta de cada modelo**
- **Modelos proxy ***
Los **PROXY** nos permiten extender la funcionalidad de un modelo sin crear una nueva tabla en la base de datos, a diferencia de los **Abstract models** es que estas solo exponen un molde de atributos y las **proxy** extienden de una tabla ya existente.


# Comparte Ride

Comparte Ride was a carpooling platform developed on 2016 as
an alternative for Mexico City inhabitants during an [air pollution
alert](https://phys.org/news/2016-03-mexico-city-air-pollution.html)
where the car usage was restricted and over 1.1 million cars
were banned from the streets.

During the environmental contingency a lot of people opted for
carpooling within their own communities but most of the information
about rides being shared was lost. As an immediate solution, some
friends and I decided to build a very simple website (using Django)
to gather and display information about this rides. The platform
quickly got some attention:

* [**Public TV interview**](https://www.youtube.com/watch?v=vW3dXpSjVRg)
* Press articles: [El Financiero](https://www.elfinanciero.com.mx/universidades/alumnos-del-tec-arman-app-de-rides-ante-el-doble-hoy-no-circula.html), [Univision](www.univision.com/noticias/citylab-transporte/restriccion-vehicular-en-mexico-impulsa-a-una-app-para-compartir-viajes), [El Universal](http://www.eluniversal.com.mx/articulo/techbit/2016/04/11/ayuda-reducir-uso-de-autos-con-comparteride), [UNO TV](https://www.unotv.com/noticias/portal/negocios/detalle/ante-problemas-contingencia-ambiental-comparte-ride-031332/)
* After-math website: [inventivehack.com/comparte-ride](https://inventivehack.com/comparte-ride)

We believe Comparte Ride's popularity grew so fast because of the fact
that groups where private and that the only way to join a group
was by getting invited by someone that was already a member.

## This project

I instructed an [advanced course of Django](https://platzi.com/cursos/django-avanzado)
at [Platzi](https://platzi.com/) where the main goal was to learn
how to professionally build a REST API. I choose this project because at the moment I was
planning the course a bunch of people reached out to Comparte Ride's inactive social
networks asking what happened to the project, and since it was also a very
simple project I thought it was a nice idea that developers from around
the globe learned to build an API around it. 

## Development

I stopped working for this project after the course finished. You can review
the code up to the course progress in the [releases section](https://github.com/pablotrinidad/cride-platzi/releases), it is labeled as **Deployment-bundle.**. You can also check
the deployment guide [here](https://gist.github.com/pablotrinidad/004122e721bcdc5bd9f0e535a44c7f7e).

To start working on this project I highly recommend you to check
[pydanny's](https://github.com/pydanny) [Django Cookiecutter](https://github.com/pydanny/cookiecutter-django) [documentation](https://cookiecutter-django.readthedocs.io/en/latest/developing-locally-docker.html) on how to get this project up and running locally.
If you don't want to do so, just run:

```bash
docker-compose -f local.yml build
docker-compose -f local.yml up
```

## Contributing

I'll be happily accepting pull requests from anyone, and if you are a
Platzi student **I HIGHLY ENCOURAGE YOU TO CONTRIBUTE!**

This that are missing right now:

* [ ] Add tests and coverage implementations
* [ ] Remove weak Token Authorization system
* [ ] Implement more async and periodic tasks to improve the rating system
* [ ] A UI!

Suggestions are welcome!

If this project get enough attention and participation, I'll be happy
to host it (the UI is required.)

## Want to use this project as yours?

Please stick to the [**LICENSE**](LICENSE), you can read a TL;DR
[here](https://tldrlegal.com/license/mit-license).

Again, this is a project I liked a lot and I will love to see it live
again. Feel free to modify, distribute, use privately, etc (READ THE [**LICENSE**](LICENSE)) as
you please just include the Copyright and the [**LICENSE**](LICENSE).

## Contributors

- [Pablo Trinidad](https://github.com/pablotrinidad)
  | CS Student at UNAM's Faculty of Science | <pablotrinidad@ciencias.unam.mx>

```
circles = [
   ["Facultad de Ciencias, UNAM","unam-fciencias",1,1,0],
   ["Tec de Monterrey, Campos Santa Fé","itesm-csf",1,1,0],
   ["Inventive","inventive",0,1,30],
   ["Platzi Bogotá","platzi-bog",0,1,120],
   ["Platzi México","platzi-mex",0,1,30],
   ["Google México","google-mx",0,1,250],
   ["Curso de Fotografía, UVA","curso-foto-uva",1,0,25],
   ["Equipo de futbol, chapinero","fut-chapinero",1,0,40],
   ["Grupo 3340, Prácticas de campo","grupo-3340-campo",1,0,50],
   ["Generación 2018 Escuela de enfermería","enfermeria-2018",1,0,0],
   ["Facultad de Ingeniería, UNAM","unam-fi",1,1,0],
   ["Facultad de Medicina, UNAM","unam-fm",1,1,0],
   ["Platzi Developer Circle - Bogotá","platzi-dev",1,0,0],
   ["Platzi Developer Circle - CDMX","platzi-dev-mx",1,0,0],
   ["IBM Santa Fé","ibm-santafe",0,1,0],
   ["P&G - Santa Fé","p-n-g",1,0,1000],
   ["Amigos de Centraal","comunidad-centraal",1,0,0],
   ["Central Academy","centraal-academy",1,1,0],
   ["Estado de México - CDMX","edomex",1,0,0],
   ["Satelite - Santa Fé entre semana","sat-sfe-week",1,0,0],
   ["Sable Digital","sable",0,0,30],
]
for cirlce in circles:
   name,slug_name,is_public ,verified ,members_limit=cirlce
   print(f'Processed { name } { slug_name } { is_public } { verified } { members_limit }')
   Circle.objects.create(
       name=name,
       slug_name=slug_name,
       is_public=is_public,
       verified=verified,
       members_limit=members_limit,
   )
```
