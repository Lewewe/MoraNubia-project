.class Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;
.super Ljava/lang/Object;
.source "LocalAIModelInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerformStringParm"
.end annotation


# instance fields
.field callback:Lcom/zte/aimodel/IResponseCallback;

.field inputData:Ljava/lang/String;

.field modelName:Ljava/lang/String;

.field pkg:Ljava/lang/String;

.field stream:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;->modelName:Ljava/lang/String;

    .line 180
    iput-object p2, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;->inputData:Ljava/lang/String;

    .line 181
    iput-object p3, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;->callback:Lcom/zte/aimodel/IResponseCallback;

    .line 182
    iput-object p4, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;->pkg:Ljava/lang/String;

    .line 183
    iput-boolean p5, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformStringParm;->stream:Z

    return-void
.end method
