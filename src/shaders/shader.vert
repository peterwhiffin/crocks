#version 460 core
layout(location = 0) in vec2 aPos;

layout(location = 1) uniform vec2 modelPos;
layout(location = 2) uniform float scale;
layout(location = 3) uniform float angle;
layout(location = 4) uniform float pointSize;

layout(location = 5) out vec2 fragPos;

void main() {
    vec2 pos = aPos;

    pos *= scale;
    // pos.y *= (800 / 600);

    float x = pos.x * cos(angle) - pos.y * sin(angle);
    float y = pos.x * sin(angle) + pos.y * cos(angle);
    pos.x = x;
    pos.y = y;

    pos += modelPos;
    // gl_PointSize = 2.0f;
    fragPos = pos;
    gl_PointSize = pointSize;
    gl_Position = vec4(pos, 0.0, 1.0);
}
