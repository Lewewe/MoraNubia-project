.class Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$1;
.super Ljava/lang/Object;
.source "ResourceUpgradeManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->onPrepare(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$1;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$1;->val$file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "bundle"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
