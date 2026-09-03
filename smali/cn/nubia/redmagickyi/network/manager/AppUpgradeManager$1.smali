.class Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$1;
.super Ljava/lang/Object;
.source "AppUpgradeManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->onPrepare(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Ljava/io/File;)V
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

    .line 166
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 169
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager$1;->val$file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
