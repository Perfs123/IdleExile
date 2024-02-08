shader_type canvas_item;

uniform float fade_in_time = 1; // Time in seconds for the fade-in effect
uniform vec4 start_color = vec4(0.5, 0.0, 0.5, 1.0); // Purple
uniform vec4 end_color = vec4(0.0, 0.0, 0.0, 0.0); // Transparent

void fragment() {
    float t = mod(TIME, fade_in_time) / fade_in_time;
    vec4 color = mix(start_color, end_color, t);
    COLOR = color;
}
