.class Lcn/nubia/redmagickyi/pose/pc/PoseActivity$4;
.super Ljava/lang/Object;
.source "PoseActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->showCameraView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$4;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 230
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xbb9

    .line 231
    iput v0, p1, Landroid/os/Message;->what:I

    .line 232
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$4;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x0

    return p0
.end method
