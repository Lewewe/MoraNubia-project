.class public final enum Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Language"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

.field public static final enum Chinese_Simplified:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

.field public static final enum Chinses_Traditional:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

.field public static final enum English:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;


# instance fields
.field public messagePrefix_P2T:Ljava/lang/String;

.field public messagePrefix_T2T:Ljava/lang/String;

.field public promptDemi_P2T:Ljava/lang/String;

.field public promptDemi_T2T:Ljava/lang/String;

.field public promptMora_P2T:Ljava/lang/String;

.field public promptMora_T2T:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;
    .locals 3

    .line 96
    sget-object v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->English:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    sget-object v1, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->Chinese_Simplified:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    sget-object v2, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->Chinses_Traditional:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    filled-new-array {v0, v1, v2}, [Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 98
    new-instance v9, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string v1, "English"

    const/4 v2, 0x0

    const-string v3, "Please provide a natural answer in short to the user\'s last question based on the following conversation context.\n"

    const-string v4, "Please provide a natural answer to the user\'s last question based on the following conversation context. Note: You MUST reply in language %s.\n"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->English:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    .line 100
    new-instance v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;->access$000()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;->access$100()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;->access$200()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;->access$300()Ljava/lang/String;

    move-result-object v18

    const-string v11, "Chinese_Simplified"

    const/4 v12, 0x1

    const-string v13, "Please provide a natural answer in short to the user\'s last question based on the following conversation context.\n"

    const-string v14, "Please provide a natural answer to the user\'s last question based on the following conversation context. Note: You MUST reply in language %s.\n"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->Chinese_Simplified:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    .line 102
    new-instance v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;->access$200()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;->access$300()Ljava/lang/String;

    move-result-object v9

    const-string v2, "Chinses_Traditional"

    const/4 v3, 0x2

    const-string v4, "Please provide a natural answer in short to the user\'s last question based on the following conversation context.\n"

    const-string v5, "Please provide a natural answer to the user\'s last question based on the following conversation context. Note: You MUST reply in language %s.\n"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->Chinses_Traditional:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    .line 96
    invoke-static {}, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->$values()[Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->$VALUES:[Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-object p3, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->messagePrefix_T2T:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->messagePrefix_P2T:Ljava/lang/String;

    .line 131
    iput-object p5, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->promptMora_T2T:Ljava/lang/String;

    .line 132
    iput-object p6, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->promptMora_P2T:Ljava/lang/String;

    .line 133
    iput-object p7, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->promptDemi_T2T:Ljava/lang/String;

    .line 134
    iput-object p8, p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->promptDemi_P2T:Ljava/lang/String;

    return-void
.end method

.method public static getLanguage()Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;
    .locals 3

    .line 139
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 140
    sget-object v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->Chinese_Simplified:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    goto :goto_0

    .line 141
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_HK:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 142
    sget-object v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->Chinses_Traditional:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    goto :goto_0

    .line 143
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_TW:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 144
    sget-object v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->Chinses_Traditional:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    goto :goto_0

    .line 146
    :cond_2
    sget-object v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->English:Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    .line 148
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get Language "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Gemini-Constants"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getLanguageName()Ljava/lang/String;
    .locals 3

    .line 154
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 155
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v1, v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_HK:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 157
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_HK:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_HK:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v1, v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_TW:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 159
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_TW:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_TW:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v1, v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getSystemLanguageName()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get Language name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Gemini-Constants"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getLanguageTag()Ljava/lang/String;
    .locals 3

    .line 169
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 170
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_HK:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 172
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_HK:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_TW:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 174
    sget-object v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_TW:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getSystemLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get Language tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Gemini-Constants"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 96
    const-class v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    return-object p0
.end method

.method public static values()[Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;
    .locals 1

    .line 96
    sget-object v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->$VALUES:[Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    invoke-virtual {v0}, [Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;

    return-object v0
.end method
