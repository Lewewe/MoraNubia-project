.class public abstract Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private displayView:Landroid/view/View;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;->uri:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;->displayView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getDisplayView()Landroid/view/View;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;->displayView:Landroid/view/View;

    return-object p0
.end method

.method public abstract onLoadStarted()V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTask{uri=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/imageloader/task/AsyncTask;->uri:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
