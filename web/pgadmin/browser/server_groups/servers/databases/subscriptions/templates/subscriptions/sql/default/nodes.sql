SELECT oid, sub.subname AS name FROM pg_subscription sub
WHERE
{% if subid %}
    sub.oid = {{ subid }};
{% else %}
    sub.subdbid = {{ did }};
{% endif %};
