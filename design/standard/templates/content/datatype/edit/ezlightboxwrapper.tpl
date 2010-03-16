{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{def $attribute_base=ContentObjectAttribute
     $selected_lightbox=$attribute.content}

{def $lightbox_list = fetch( 'lightbox', 'list', hash( 'sortBy', hash( 'name', 'ASC' ) ) )}

<select id="ezcoa-{if ne( $attribute_base, 'ContentObjectAttribute' )}{$attribute_base}-{/if}{$attribute.contentclassattribute_id}_{$attribute.contentclass_attribute_identifier}"
        class="ezcc-{$attribute.object.content_class.identifier} ezcca-{$attribute.object.content_class.identifier}_{$attribute.contentclass_attribute_identifier}" 
        name="{$attribute_base}_ezlightbox_id_{$attribute.id}">

{foreach $lightbox_list as $lightbox}

    <option value="{$lightbox.id}"{cond( $lightbox.id|eq( $selected_lightbox ), ' selected="selected"' )}>{$lightbox.name|wash()} ({$lightbox.item_count})</option>

{/foreach}

</select>
