.class Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$3;
.super Ljava/lang/Object;
.source "ARBigImageFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$3;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveFailed(Ljava/lang/String;)V
    .locals 0

    .line 211
    const-string p0, "ARBigImageFragment"

    const-string p1, "save_photo onSaveFailed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveFinished(Landroid/net/Uri;)V
    .locals 2

    .line 203
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    .line 204
    iput v1, v0, Landroid/os/Message;->what:I

    .line 205
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$3;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/CopyFileByUri;->uriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$3;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
