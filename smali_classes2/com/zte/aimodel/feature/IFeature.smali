.class public Lcom/zte/aimodel/feature/IFeature;
.super Ljava/lang/Object;
.source "IFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/feature/IFeature$IGetter;,
        Lcom/zte/aimodel/feature/IFeature$FEATURE;
    }
.end annotation


# static fields
.field public static final CHAT:I = 0x0

.field public static final PIC_ANALYZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IFeature"


# instance fields
.field private mDefaultCallback:Lcom/zte/aimodel/IResponseCallback;

.field private mGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/zte/aimodel/feature/IFeature$1;

    invoke-direct {v0, p0}, Lcom/zte/aimodel/feature/IFeature$1;-><init>(Lcom/zte/aimodel/feature/IFeature;)V

    iput-object v0, p0, Lcom/zte/aimodel/feature/IFeature;->mDefaultCallback:Lcom/zte/aimodel/IResponseCallback;

    return-void
.end method


# virtual methods
.method protected clearHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/zte/aimodel/feature/IFeature;->mGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;

    invoke-interface {p0}, Lcom/zte/aimodel/feature/IFeature$IGetter;->getService()Lcom/zte/aimodel/IVendorAIModelService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/zte/aimodel/IVendorAIModelService;->clearHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "WARNING:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IFeature"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected getFeatureGetter()Lcom/zte/aimodel/feature/IFeature$IGetter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/zte/aimodel/feature/IFeature;->mGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;

    return-object p0
.end method

.method public performByteInference(Ljava/lang/String;[BLcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/zte/aimodel/feature/IFeature;->mGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;

    invoke-interface {v0}, Lcom/zte/aimodel/feature/IFeature$IGetter;->getService()Lcom/zte/aimodel/IVendorAIModelService;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    .line 64
    :try_start_0
    iget-object p3, p0, Lcom/zte/aimodel/feature/IFeature;->mDefaultCallback:Lcom/zte/aimodel/IResponseCallback;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v4, p3

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/zte/aimodel/IVendorAIModelService;->performByteInference(Ljava/lang/String;[BLcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 66
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "WARNING:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IFeature"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public performStringInference(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 44
    iget-object v0, p0, Lcom/zte/aimodel/feature/IFeature;->mGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;

    invoke-interface {v0}, Lcom/zte/aimodel/feature/IFeature$IGetter;->getService()Lcom/zte/aimodel/IVendorAIModelService;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    .line 48
    :try_start_0
    iget-object p3, p0, Lcom/zte/aimodel/feature/IFeature;->mDefaultCallback:Lcom/zte/aimodel/IResponseCallback;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v4, p3

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/zte/aimodel/IVendorAIModelService;->performStringInference(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 50
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "WARNING:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IFeature"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public queryRemainToken(Ljava/lang/String;)I
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/zte/aimodel/feature/IFeature;->mGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;

    invoke-interface {p0}, Lcom/zte/aimodel/feature/IFeature$IGetter;->getService()Lcom/zte/aimodel/IVendorAIModelService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 85
    :try_start_0
    invoke-interface {p0, p1}, Lcom/zte/aimodel/IVendorAIModelService;->queryRemainToken(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WARNING:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IFeature"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method protected request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    .line 107
    invoke-virtual/range {v0 .. v5}, Lcom/zte/aimodel/feature/IFeature;->performStringInference(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected requestNonStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/zte/aimodel/feature/IFeature;->performStringInference(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aimodel/IResponseCallback;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setFeatureGetter(Lcom/zte/aimodel/feature/IFeature$IGetter;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/zte/aimodel/feature/IFeature;->mGetter:Lcom/zte/aimodel/feature/IFeature$IGetter;

    return-void
.end method
