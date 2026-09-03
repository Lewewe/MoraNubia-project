.class Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$2;
.super Ljava/lang/Object;
.source "RedmagicPlaymate.java"

# interfaces
.implements Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$OnPlaymateOpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->showFragment(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$2;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoView()Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;
    .locals 0

    .line 189
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$2;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1100(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->access$1200(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;)Lcn/nubia/redmagickyi/playmate/factory/VideoPlayerPlaymate;

    move-result-object p0

    return-object p0
.end method

.method public onAnimationCallback(ZZ)V
    .locals 0

    return-void
.end method

.method public onHideFragment()V
    .locals 0

    return-void
.end method

.method public saveState(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 195
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$2;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1300(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->copy(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$2;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    new-instance v0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$2;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)V

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1302(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;

    :goto_0
    return-void
.end method

.method public startPlay(I)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$2;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1100(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;->access$1400(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoPlayManager;I)V

    return-void
.end method
