-- Do not change this file manually
-- Generated with dev/create-surface-mt.lua

local ffi = require 'ffi'

local surface_mt = {__index={}}

local function cairo_create_surface_mt(cairo)

   local function register(funcname, prefix)
      prefix = prefix or 'cairo_surface_'

      local status, sym = pcall(function()
                                   return cairo.C[prefix .. funcname]
                                end)
      if status then
         surface_mt.__index[funcname] = sym
         return true
      end

      print('warning: method not found: ', prefix .. funcname, sym)

      return false
   end

  register('create_similar')
  register('create_similar_image')
  register('map_to_image')
  register('unmap_image')
  register('create_for_rectangle')
  register('create_observer')
  register('observer_add_paint_callback')
  register('observer_add_mask_callback')
  register('observer_add_fill_callback')
  register('observer_add_stroke_callback')
  register('observer_add_glyphs_callback')
  register('observer_add_flush_callback')
  register('observer_add_finish_callback')
  register('observer_print')
  register('observer_elapsed')
  register('reference')
  register('finish')
  register('destroy')
  register('get_device')
  register('get_reference_count')
  register('status')
  register('get_type')
  register('get_content')
  register('write_to_png')
  register('write_to_png_stream')
  register('get_user_data')
  register('set_user_data')
  register('get_mime_data')
  register('set_mime_data')
  register('supports_mime_type')
  register('get_font_options')
  register('flush')
  register('mark_dirty')
  register('mark_dirty_rectangle')
  register('set_device_offset')
  register('get_device_offset')
  register('set_fallback_resolution')
  register('get_fallback_resolution')
  register('copy_page')
  register('show_page')
  register('has_show_text_glyphs')

  register('get_data', 'cairo_image_surface_')
  register('get_format', 'cairo_image_surface_')
  register('get_width', 'cairo_image_surface_')
  register('get_height', 'cairo_image_surface_')
  register('get_stride', 'cairo_image_surface_')

  function cairo.surface_create_similar(...)
     local surf = cairo.C.cairo_surface_create_similar(...)
     ffi.gc(surf, cairo.C.cairo_surface_destroy)
     return surf
  end

  function cairo.surface_create_similar_image(...)
     local surf = cairo.C.cairo_surface_create_similar_image(...)
     ffi.gc(surf, cairo.C.cairo_surface_destroy)
     return surf
  end

  function cairo.surface_create_for_rectangle(...)
     local surf = cairo.C.cairo_surface_create_for_rectangle(...)
     ffi.gc(surf, cairo.C.cairo_surface_destroy)
     return surf
  end

  function cairo.image_surface_create(...)
     local surf = cairo.C.cairo_image_surface_create(...)
     ffi.gc(surf, cairo.C.cairo_surface_destroy)
     return surf
  end


  ffi.metatype('cairo_surface_t', surface_mt)

end

return cairo_create_surface_mt


