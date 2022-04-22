{# This is a comment #}

{% set my_cool_string = 'wow! cool!' %}
{% set my_second_cool_string = 'This is jinja!' %}
{%set my_cool_number = 100 %}

{{ my_cool_string }} {{ my_second_cool_string }} I want to write Jinja for {{ my_cool_number}} years!


{% set my_animals = ['lemur', 'wolf', 'panther', 'tardigrade'] %}

{{ my_animals[0] }}
{{ my_animals[3] }}

{% for animal in my_animals %}
    My favorite animal is {{ animal }}
{% endfor %}

{% set temperature = 770 %}

{% if temperature < 65 %}
    Time for a cappuccino!
{% else %}
    Time for a cold drink
{% endif %}

{%- set foods = ['carrot', 'hotdog', 'cucumber', 'bell pepper'] -%}

{%- for food in foods -%}
    {%- if food == 'hotdog' -%}
        {%- set food_type = 'snack' -%}
    {%- else -%}
        {%- set food_type = 'vegetables' -%}
    {%- endif -%}

    {{ food }} is {{ food_type }}

{% endfor %}

{# to eliminate white lines between lines use - after and before % sign #}

{% set websters_dict = {
    'word': 'data',
    'speech_part': 'noun',
    'definition': 'if you know you know'
} %}

{{websters_dict['word']}} ({{websters_dict['speech_part'] }}): defined as "{{websters_dict['definition']}}"