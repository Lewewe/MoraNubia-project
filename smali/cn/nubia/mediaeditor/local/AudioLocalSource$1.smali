.class Lcn/nubia/mediaeditor/local/AudioLocalSource$1;
.super Ljava/util/HashMap;
.source "AudioLocalSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/mediaeditor/local/AudioLocalSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 32
    const-string v0, "audio/amr"

    const-string v1, ".amr"

    invoke-virtual {p0, v0, v1}, Lcn/nubia/mediaeditor/local/AudioLocalSource$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "audio/amr-wb"

    invoke-virtual {p0, v0, v1}, Lcn/nubia/mediaeditor/local/AudioLocalSource$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "audio/3gpp"

    invoke-virtual {p0, v0, v1}, Lcn/nubia/mediaeditor/local/AudioLocalSource$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "audio/mp4a-latm"

    const-string v1, ".m4a"

    invoke-virtual {p0, v0, v1}, Lcn/nubia/mediaeditor/local/AudioLocalSource$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "audio/aac"

    const-string v1, ".aac"

    invoke-virtual {p0, v0, v1}, Lcn/nubia/mediaeditor/local/AudioLocalSource$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
