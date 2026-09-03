.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager$1;
.super Ljava/lang/Object;
.source "DanceStudioActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->checkFileDiff()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 553
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .line 557
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->access$1900(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->access$2000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;->access$1900(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$WallPaperManager;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
