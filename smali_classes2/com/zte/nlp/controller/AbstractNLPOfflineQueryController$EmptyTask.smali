.class Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$EmptyTask;
.super Lcom/zte/nlp/controller/StepTask;
.source "AbstractNLPOfflineQueryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;


# direct methods
.method public constructor <init>(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;Lcom/zte/nlp/controller/StepTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$EmptyTask;->this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    .line 161
    invoke-direct {p0, p2}, Lcom/zte/nlp/controller/StepTask;-><init>(Lcom/zte/nlp/controller/StepTask;)V

    return-void
.end method


# virtual methods
.method protected query()Lcom/zte/nlp/model/NLPResponse;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
