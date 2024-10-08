// Generated code. Do not modify.

package com.yandex.div.reference

import android.graphics.Color
import android.net.Uri
import androidx.annotation.ColorInt
import com.yandex.div.data.*
import com.yandex.div.json.*
import com.yandex.div.json.expressions.Expression
import com.yandex.div.json.expressions.ExpressionsList
import com.yandex.div.json.schema.*
import org.json.JSONArray
import org.json.JSONObject

class EntityWithOptionalProperty(
    @JvmField val property: Expression<String>? = null,
) : JSONSerializable, Hashable {

    private var _hash: Int? = null 

    override fun hash(): Int {
        _hash?.let {
            return it
        }
        val hash = 
            this::class.hashCode() +
            (property?.hashCode() ?: 0)
        _hash = hash
        return hash
    }

    fun equals(other: EntityWithOptionalProperty?, resolver: ExpressionResolver, otherResolver: ExpressionResolver): Boolean {
        other ?: return false
        return property?.evaluate(resolver) == other.property?.evaluate(otherResolver)
    }

    fun copy(
        property: Expression<String>? = this.property,
    ) = EntityWithOptionalProperty(
        property = property,
    )

    override fun writeToJSON(): JSONObject {
        val json = JSONObject()
        json.writeExpression(key = "property", value = property)
        json.write(key = "type", value = TYPE)
        return json
    }

    companion object {
        const val TYPE = "entity_with_optional_property"

        @JvmStatic
        @JvmName("fromJson")
        operator fun invoke(env: ParsingEnvironment, json: JSONObject): EntityWithOptionalProperty {
            val logger = env.logger
            return EntityWithOptionalProperty(
                property = JsonParser.readOptionalExpression(json, "property", logger, env, TYPE_HELPER_STRING)
            )
        }

        val CREATOR = { env: ParsingEnvironment, it: JSONObject -> EntityWithOptionalProperty(env, json = it) }
    }
}
