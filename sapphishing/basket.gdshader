shader_type canvas_item;

// This creates a slider in the inspector to control the blur amount
uniform float blur_amount : hint_range(0.0, 5.0) = 1.5;

void fragment() {
    // We sample the sprite's texture using textureLod (Level of Detail)
    // Higher LOD values fetch smaller, pre-calculated blurry versions (mipmaps)
    vec4 blurred_color = textureLod(TEXTURE, UV, blur_amount);
    
    // Assign the final blurry color to the pixel
    COLOR = blurred_color;
}