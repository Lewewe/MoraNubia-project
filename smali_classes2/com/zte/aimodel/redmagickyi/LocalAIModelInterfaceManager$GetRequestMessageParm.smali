.class Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$GetRequestMessageParm;
.super Ljava/lang/Object;
.source "LocalAIModelInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetRequestMessageParm"
.end annotation


# instance fields
.field modelName:Ljava/lang/String;

.field pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$GetRequestMessageParm;->modelName:Ljava/lang/String;

    .line 209
    iput-object p2, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$GetRequestMessageParm;->pkg:Ljava/lang/String;

    return-void
.end method
