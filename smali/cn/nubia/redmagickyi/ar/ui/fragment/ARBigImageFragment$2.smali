.class Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$2;
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

    .line 170
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveFailed(Ljava/lang/String;)V
    .locals 1

    .line 191
    const-string p1, "ARBigImageFragment"

    const-string v0, "edit_photo onSaveFailed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->access$200(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;Z)V

    return-void
.end method

.method public onSaveFinished(Landroid/net/Uri;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->access$000(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)Landroid/content/Intent;

    move-result-object v0

    .line 175
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isRedmagicOSRom()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->access$100(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 181
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 183
    :cond_1
    const-string p1, "ARBigImageFragment"

    const-string v0, "edit_photo, failed to goto editor"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->access$200(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;Z)V

    goto :goto_1

    .line 177
    :cond_2
    :goto_0
    const-string p1, "cn.nubia.photoeditor"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method
