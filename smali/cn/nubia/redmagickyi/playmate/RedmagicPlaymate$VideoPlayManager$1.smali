.class Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager$1;
.super Ljava/lang/Object;
.source "RedmagicPlaymate.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/videoplayer/VideoPlayer$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager$1;->this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffering()V
    .locals 0

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager$1;->this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$2400(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    .line 379
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager$1;->this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$2200(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    return-void
.end method

.method public onError()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager$1;->this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$2300(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    .line 385
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager$1;->this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$2500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public onRenderingStart()V
    .locals 0

    .line 358
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager$1;->this$1:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$2200(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    return-void
.end method

.method public onReset()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
