.class Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$5;
.super Landroid/os/Handler;
.source "ARBigImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;
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

    .line 281
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 284
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 285
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 288
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 291
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-static {}, Lcn/nubia/redmagickyi/util/FileUtils;->getPhoneStorage()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->model_shortcut_capture_internal_storage:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->ar_save_success:I

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saved image path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ARBigImageFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_3
    :goto_0
    return-void
.end method
