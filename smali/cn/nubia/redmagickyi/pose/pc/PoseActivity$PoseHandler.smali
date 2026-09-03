.class Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;
.super Landroid/os/Handler;
.source "PoseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/pc/PoseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PoseHandler"
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

    .line 748
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 751
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 754
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const-string v1, "PoseActivity"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 844
    :pswitch_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1902(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)Z

    goto/16 :goto_3

    .line 828
    :pswitch_2
    const-string p1, "handleMessage: POSE_MSG_SHOW_CAMERA_VIEW"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Landroid/content/Context;)V

    .line 830
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 831
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->clearPoseScene()V

    .line 833
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->stopFaceCamera()V

    .line 834
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 835
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->setPoseUnConfidence()V

    .line 837
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;I)V

    .line 838
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$700(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraFaceViewPC;->getCameraView()Landroid/view/SurfaceView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 840
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1700(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    .line 841
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1800(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    goto/16 :goto_3

    .line 824
    :pswitch_3
    const-string p1, "handleMessage: relaunch"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    goto/16 :goto_3

    .line 821
    :pswitch_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1300(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    goto/16 :goto_3

    .line 818
    :pswitch_5
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1200(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    goto/16 :goto_3

    .line 772
    :pswitch_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isLiveGreenScreen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 773
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->ar_live_bg_green_screen_on:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 775
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getBgUri()Ljava/lang/String;

    move-result-object p1

    .line 776
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 777
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->ar_live_bg_green_screnn_off:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 781
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    .line 783
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->ar_live_bg_green_screnn_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void

    .line 786
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_7

    .line 788
    :try_start_1
    const-string v2, "bitmap == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_6

    if-eqz p1, :cond_6

    .line 805
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    return-void

    .line 791
    :cond_7
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/CopyFileByUri;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 792
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v1

    .line 793
    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 794
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 795
    :try_start_3
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 796
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 797
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v3, v2}, Lcn/nubia/redmagickyi/util/BitmapUtils;->centerCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 798
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_8

    .line 805
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    if-eqz v1, :cond_d

    if-eq v1, v0, :cond_d

    .line 810
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v11, v0

    move-object v0, p1

    move-object p1, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 800
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcn/nubia/redmagickyi/main/R$color;->ar_live_bg_green_screnn_off:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 801
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_9

    .line 805
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    if-eqz v2, :cond_d

    if-eq v2, v1, :cond_d

    .line 810
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :catchall_3
    move-exception p0

    :goto_2
    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_a

    .line 805
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    if-eqz v2, :cond_b

    if-eq v2, v1, :cond_b

    .line 810
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 813
    :cond_b
    throw p0

    .line 769
    :pswitch_7
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    goto :goto_3

    .line 763
    :pswitch_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 764
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$900(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    .line 765
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V

    .line 766
    const-string p0, "handleMessage: show menu"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 756
    :pswitch_9
    const-string p1, "handleMessage: hide menu"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$800(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 758
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$800(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->dismiss()V

    .line 760
    :cond_c
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCharactorClickable:Z

    :cond_d
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
