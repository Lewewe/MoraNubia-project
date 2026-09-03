.class Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$QueryRemainTokenParm;
.super Ljava/lang/Object;
.source "LocalAIModelInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryRemainTokenParm"
.end annotation


# instance fields
.field modelName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$QueryRemainTokenParm;->modelName:Ljava/lang/String;

    return-void
.end method
