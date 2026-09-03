.class Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader$1;
.super Ljava/lang/Object;
.source "RedmagicPlaymate.java"

# interfaces
.implements Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 471
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 1

    .line 485
    const-string p1, "RedmagicPlaymate"

    const-string v0, "video list load failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    invoke-static {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->access$1600(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    .line 487
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$2500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    :cond_0
    return-void
.end method

.method public onLoadSuccess(Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;)V
    .locals 1

    .line 475
    const-string p1, "RedmagicPlaymate"

    const-string v0, "video list load success"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    invoke-static {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->access$1600(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    .line 477
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$2500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    goto :goto_0

    .line 479
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader$1;->this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1100(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->access$2600(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;Z)V

    :goto_0
    return-void
.end method
