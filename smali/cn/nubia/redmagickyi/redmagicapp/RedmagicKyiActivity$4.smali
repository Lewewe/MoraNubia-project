.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;
.super Ljava/lang/Object;
.source "RedmagicKyiActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->parseMessageFromUnity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 527
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
