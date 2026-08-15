# **💊 Farmacia BD**

Un proyecto de base de datos para gestionar una farmacia. Creamos las tablas, insertamos datos de prueba y hacemos consultas útiles con alertas de vencimiento.

---

## **📋 ¿Qué es?**

Básicamente es una BD de farmacia con:

- **Laboratorios** — Fabricantes de medicamentos
- **Medicamentos** — Los fármacos disponibles
- **Lotes** — Con fechas de vencimiento (lo importante)
- **Recetas Médicas** — Prescripciones de médicos
- **Detalles de Receta** — Medicamentos por receta
- **Ventas** — Lo que se vende en la farmacia
- **Detalles de Venta** — Medicamentos vendidos por venta

La parte más interesante es que podemos detectar medicamentos que vencen pronto, ver stock bajo, consultar ventas por laboratorio, etc.

---

## **📊 Diagrama ER**

Aquí está la estructura de las tablas y sus relaciones:

<img width="1561" height="831" alt="image" src="https://github.com/user-attachments/assets/3f7109d6-48af-44c4-9238-212ec8fd6468" />


---

## **👥 Asignación de Tareas**

| Integrante | Tarea | Descripción |
|-----------|-------|------------|
| **42 Samuel Rivas** | 🎯 Coordinador | README + Diagrama ER |
| **02 Alisson Vásquez** | 📊 Tablas | Crear 7 archivos SQL con CREATE TABLE |
| **25 Eduardo Salomón** | 📝 Inserciones | Datos de prueba en todas las tablas |
| **01 Alia Anaí** | 🔍 Consultas Básicas | SELECT, búsquedas, conteos |
| **26 Gabriel Pérez** | 🔗 JOINs | Cruzar información entre tablas |
| **13 Keidy Martínez** | 🚀 Avanzadas | Vencimientos, subconsultas, GROUP BY |
| **30 Jairo Sahir** | 📁 Documentación | Revisar y organizar el repo |

---

## **📁 Estructura del Repositorio**

```
farmacia-bd/
│
├── README.md
│
├── 01_creacion_tablas/
│   ├── laboratorios.sql
│   ├── medicamentos.sql
│   ├── lotes.sql
│   ├── recetas_medicas.sql
│   ├── detalles_receta.sql
│   ├── ventas.sql
│   └── detalles_venta.sql
│
├── 02_inserciones/
│   ├── insert_laboratorios.sql
│   ├── insert_medicamentos.sql
│   ├── insert_lotes.sql
│   ├── insert_recetas_medicas.sql
│   ├── insert_detalles_receta.sql
│   ├── insert_ventas.sql
│   └── insert_detalles_venta.sql
│
├── 03_consultas_basicas/
│   ├── listar_laboratorios.sql
│   ├── listar_medicamentos.sql
│   ├── buscar_medicamento_por_nombre.sql
│   └── contar_medicamentos_por_laboratorio.sql
│
├── 04_consultas_joins/
│   ├── medicamentos_y_laboratorios.sql
│   ├── lotes_con_medicamentos.sql
│   ├── ventas_con_detalles.sql
│   └── recetas_con_medicamentos.sql
│
└── 05_consultas_avanzadas/
    ├── medicamentos_por_vencer.sql
    ├── medicamentos_vencidos.sql
    ├── ventas_por_laboratorio.sql
    └── cantidad_medicamentos_vendidos.sql
```


