@file:JvmName("StorageQueries")

package com.yandex.div.storage.database

internal const val REPLACE_CARD = "INSERT OR REPLACE INTO $TABLE_CARDS VALUES (?, ?, ?, ?)"

internal const val DELETE_CARDS = "DELETE FROM $TABLE_CARDS"
internal const val DELETE_CARDS_IDS = "DELETE FROM $TABLE_CARDS WHERE $COLUMN_LAYOUT_ID IN "

internal const val SELECT_TEMPLATES_BY_HASHES = """
    SELECT t.$COLUMN_TEMPLATE_HASH, t.$COLUMN_TEMPLATE_DATA
    FROM $TABLE_TEMPLATES AS t
    WHERE t.$COLUMN_TEMPLATE_HASH in
"""

internal const val INSERT_TEMPLATE = "INSERT OR IGNORE INTO $TABLE_TEMPLATES VALUES (?, ?)"
internal const val DELETE_UNUSED_TEMPLATES = """
    DELETE FROM $TABLE_TEMPLATES
    WHERE $COLUMN_TEMPLATE_HASH NOT IN
        (SELECT DISTINCT $COLUMN_TEMPLATE_HASH FROM $TABLE_TEMPLATE_REFERENCES)
    """

internal const val DELETE_UNUSED_TEMPLATE_REFERENCES = """
    DELETE FROM $TABLE_TEMPLATE_REFERENCES
    WHERE $COLUMN_GROUP_ID NOT IN
        (SELECT $COLUMN_CARD_GROUP_ID FROM $TABLE_CARDS)
    """

internal const val DELETE_TEMPLATES = "DELETE FROM $TABLE_TEMPLATES"

internal const val INSERT_TEMPLATE_USAGE = "INSERT OR IGNORE INTO $TABLE_TEMPLATE_REFERENCES VALUES (?, ?, ?)"

internal const val DELETE_TEMPLATE_USAGES = "DELETE FROM $TABLE_TEMPLATE_REFERENCES"

internal const val DELETE_TEMPLATE_USAGES_BY_CARD_IDS = """
    DELETE FROM $TABLE_TEMPLATE_REFERENCES WHERE $COLUMN_GROUP_ID IN
"""

internal const val REPLACE_RAW_JSON = "INSERT OR REPLACE INTO $TABLE_RAW_JSON VALUES (?, ?)"

internal const val DELETE_RAW_JSON_BY_IDS = "DELETE FROM $TABLE_RAW_JSON WHERE $COLUMN_RAW_JSON_ID IN"

internal const val SELECT_RAW_JSONS_BY_IDS = """
    SELECT $COLUMN_RAW_JSON_ID, $COLUMN_RAW_JSON_DATA
    FROM $TABLE_RAW_JSON
    WHERE $COLUMN_RAW_JSON_ID IN
"""
