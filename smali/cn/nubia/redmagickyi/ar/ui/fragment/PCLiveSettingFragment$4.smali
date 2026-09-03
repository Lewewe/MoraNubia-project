.class Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$4;
.super Landroid/os/Handler;
.source "PCLiveSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 343
    const-string v0, "PCLiveSettingFragment"

    .line 0
    const-string v1, "update sql:"

    const-string v2, "ALBUM_PHOTO_SUCCESS:"

    .line 343
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 344
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto/16 :goto_0

    .line 348
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/other_bg.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    const-string v2, "file.exists()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 354
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v4, "uri_photo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v2, p1, v3}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/CopyFileByUri;->getFilePath(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->access$200(Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p0

    const-string v0, "other_bg"

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
