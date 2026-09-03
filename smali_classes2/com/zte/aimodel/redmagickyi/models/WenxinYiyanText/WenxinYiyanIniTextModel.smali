.class public Lcom/zte/aimodel/redmagickyi/models/WenxinYiyanText/WenxinYiyanIniTextModel;
.super Lcom/zte/aimodel/redmagickyi/models/IModel;
.source "WenxinYiyanIniTextModel.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/zte/aimodel/redmagickyi/models/IModel;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearHistory()V
    .locals 0

    return-void
.end method

.method public inference(Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;
    .locals 1

    const-string p1, "Unsupported model "

    if-eqz p2, :cond_0

    .line 18
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/aimodel/redmagickyi/models/WenxinYiyanText/WenxinYiyanIniTextModel;->getModelName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/zte/aimodel/IResponseCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
