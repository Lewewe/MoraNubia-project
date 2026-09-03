.class public Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$System;,
        Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$MessagePrefix;,
        Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$ChatType;,
        Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Language;,
        Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants$Url;
    }
.end annotation


# static fields
.field public static final APPID:Ljava/lang/String;

.field public static final PACKAGE_NAME:Ljava/lang/String;

.field public static final SECRET_KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Gemini-Constants"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "383363653365313866396463353762356539ae23"

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/EncrUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants;->APPID:Ljava/lang/String;

    .line 19
    const-string v0, "336531623364313635386166383034363565313737323636343530643239af24"

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/EncrUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants;->SECRET_KEY:Ljava/lang/String;

    .line 21
    const-string v0, "636e2e6e756269612e7265646d6167696430b47c"

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/EncrUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/redmagickyi/models/Gemini/utils/Constants;->PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
