.class Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$1;
.super Ljava/lang/Object;
.source "SaveVideoFileUtils.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils;->getSaveDirectory(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dir:[Ljava/io/File;


# direct methods
.method constructor <init>([Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$1;->val$dir:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 2

    .line 82
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/util/SaveVideoFileUtils$1;->val$dir:[Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    aput-object p1, p0, v1

    return-void
.end method
