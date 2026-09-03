.class Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$1;
.super Landroid/os/Handler;
.source "WallPaperPetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$1;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 84
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$1;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->access$000(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;Z)V

    :goto_0
    return-void
.end method
