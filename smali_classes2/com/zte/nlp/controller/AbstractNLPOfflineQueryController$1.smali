.class Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$1;
.super Ljava/lang/Object;
.source "AbstractNLPOfflineQueryController.java"

# interfaces
.implements Lcom/zte/nlp/controller/StepTask$OnQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;


# direct methods
.method constructor <init>(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$1;->this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$1;->this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->access$100(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method public onSuccess(Lcom/zte/nlp/model/NLPResponse;)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$1;->this$0:Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    invoke-static {p0, p1}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->access$000(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;Ljava/lang/Object;)V

    return-void
.end method
