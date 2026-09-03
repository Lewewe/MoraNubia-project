.class Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;
.super Ljava/lang/Object;
.source "LocalAIModelInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerformByteParm"
.end annotation


# instance fields
.field callback:Lcom/zte/aimodel/IResponseCallback;

.field inputData:[B

.field modelName:Ljava/lang/String;

.field pkg:Ljava/lang/String;

.field stream:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;->modelName:Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;->inputData:[B

    .line 197
    iput-object p3, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;->callback:Lcom/zte/aimodel/IResponseCallback;

    .line 198
    iput-object p4, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;->pkg:Ljava/lang/String;

    .line 199
    iput-boolean p5, p0, Lcom/zte/aimodel/redmagickyi/LocalAIModelInterfaceManager$PerformByteParm;->stream:Z

    return-void
.end method
