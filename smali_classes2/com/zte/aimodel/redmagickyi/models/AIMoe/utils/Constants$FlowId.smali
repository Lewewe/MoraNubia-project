.class public Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$FlowId;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlowId"
.end annotation


# static fields
.field public static final FLOW_ID_DEBUG:Ljava/lang/String;

.field public static final FLOW_ID_RELEASE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "65702d3134366638333763613739643362ab23"

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/EncrUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$FlowId;->FLOW_ID_DEBUG:Ljava/lang/String;

    .line 19
    const-string v0, "65702d626333343837373330633733336efe25"

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/EncrUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$FlowId;->FLOW_ID_RELEASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/utils/Constants$FlowId;->FLOW_ID_RELEASE:Ljava/lang/String;

    return-object v0
.end method
