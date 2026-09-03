.class public Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$Url;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Url"
.end annotation


# static fields
.field private static final URL_BASE_DEBUG:Ljava/lang/String;

.field private static final URL_BASE_RELEASE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "68747470733a2f2f61696d6f652d746573742e7a74656d732e636f6d2f61696d6f652f736572766963652f617069282dfc3a"

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/EncrUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$Url;->URL_BASE_DEBUG:Ljava/lang/String;

    .line 34
    const-string v0, "68747470733a2f2f61696d6f652e7a74656d732e636f6d2f61696d6f652f736572766963652f617069282dfc3a"

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/EncrUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$Url;->URL_BASE_RELEASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$Url;->URL_BASE_RELEASE:Ljava/lang/String;

    return-object v0
.end method
