.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler$1;
.super Ljava/lang/Object;
.source "AccompanyManager.java"

# interfaces
.implements Lcom/zte/oss/entry/UploadFile$FileGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$WorkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 73
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
