.class abstract Lcom/zte/nlp/controller/StepTask;
.super Ljava/lang/Object;
.source "AbstractNLPOfflineQueryController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/nlp/controller/StepTask$OnQueryCallback;
    }
.end annotation


# instance fields
.field private isCanceled:Z

.field private next:Lcom/zte/nlp/controller/StepTask;

.field private onQueryCallback:Lcom/zte/nlp/controller/StepTask$OnQueryCallback;

.field private zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;


# direct methods
.method public constructor <init>(Lcom/zte/nlp/controller/StepTask;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/zte/nlp/controller/StepTask;->next:Lcom/zte/nlp/controller/StepTask;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/zte/nlp/controller/StepTask;->isCanceled:Z

    .line 226
    invoke-virtual {p0}, Lcom/zte/nlp/controller/StepTask;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object p0, p0, Lcom/zte/nlp/controller/StepTask;->next:Lcom/zte/nlp/controller/StepTask;

    invoke-virtual {p0}, Lcom/zte/nlp/controller/StepTask;->cancel()V

    :cond_0
    return-void
.end method

.method protected final hasNext()Z
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/zte/nlp/controller/StepTask;->next:Lcom/zte/nlp/controller/StepTask;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final load()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/zte/nlp/controller/StepTask;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected abstract query()Lcom/zte/nlp/model/NLPResponse;
.end method

.method public final run()V
    .locals 2

    .line 200
    iget-boolean v0, p0, Lcom/zte/nlp/controller/StepTask;->isCanceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/zte/nlp/controller/StepTask;->query()Lcom/zte/nlp/model/NLPResponse;

    move-result-object v0

    .line 204
    iget-boolean v1, p0, Lcom/zte/nlp/controller/StepTask;->isCanceled:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/zte/nlp/controller/StepTask;->onQueryCallback:Lcom/zte/nlp/controller/StepTask$OnQueryCallback;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 208
    invoke-interface {v1, v0}, Lcom/zte/nlp/controller/StepTask$OnQueryCallback;->onSuccess(Lcom/zte/nlp/model/NLPResponse;)V

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/zte/nlp/controller/StepTask;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object p0, p0, Lcom/zte/nlp/controller/StepTask;->next:Lcom/zte/nlp/controller/StepTask;

    invoke-virtual {p0}, Lcom/zte/nlp/controller/StepTask;->load()V

    goto :goto_0

    .line 213
    :cond_3
    iget-object p0, p0, Lcom/zte/nlp/controller/StepTask;->onQueryCallback:Lcom/zte/nlp/controller/StepTask$OnQueryCallback;

    invoke-interface {p0}, Lcom/zte/nlp/controller/StepTask$OnQueryCallback;->onError()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final setOnQueryCallback(Lcom/zte/nlp/controller/StepTask$OnQueryCallback;)V
    .locals 1

    .line 188
    iput-object p1, p0, Lcom/zte/nlp/controller/StepTask;->onQueryCallback:Lcom/zte/nlp/controller/StepTask$OnQueryCallback;

    .line 189
    invoke-virtual {p0}, Lcom/zte/nlp/controller/StepTask;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object p0, p0, Lcom/zte/nlp/controller/StepTask;->next:Lcom/zte/nlp/controller/StepTask;

    invoke-virtual {p0, p1}, Lcom/zte/nlp/controller/StepTask;->setOnQueryCallback(Lcom/zte/nlp/controller/StepTask$OnQueryCallback;)V

    :cond_0
    return-void
.end method

.method public final setZteTimer(Lcn/nubia/redmagickyi/util/ZTETimer;)V
    .locals 1

    .line 181
    iput-object p1, p0, Lcom/zte/nlp/controller/StepTask;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 182
    invoke-virtual {p0}, Lcom/zte/nlp/controller/StepTask;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object p0, p0, Lcom/zte/nlp/controller/StepTask;->next:Lcom/zte/nlp/controller/StepTask;

    invoke-virtual {p0, p1}, Lcom/zte/nlp/controller/StepTask;->setZteTimer(Lcn/nubia/redmagickyi/util/ZTETimer;)V

    :cond_0
    return-void
.end method
