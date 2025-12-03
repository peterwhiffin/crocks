#version 460 core
layout(location = 0) out vec4 fragColor;

layout(location = 5) in vec2 fragPos;

layout(location = 7) uniform vec3 color;
layout(location = 8) uniform float time;

void main() {
    vec2 rolling = vec2(sin(time), cos(time));
    float sinT = sin(time);
    float cosT = cos(time);

    vec3 finalColor = vec3(max(0.7, abs(sinT)), 1.0 - distance(fragPos, rolling), max(0.7, abs(cosT)));
    fragColor = vec4(finalColor, 1.0);
}
