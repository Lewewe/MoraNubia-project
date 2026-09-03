.class public Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;
.super Ljava/lang/Object;
.source "ResourceResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnlineResourceBotItem"
.end annotation


# instance fields
.field private file_md5:Ljava/lang/String;

.field private file_size:J

.field private file_url:Ljava/lang/String;

.field private id:I

.field private max_app_version:J

.field private min_app_version:J

.field final synthetic this$0:Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;

.field private update_description:Ljava/lang/String;

.field private version_code:J

.field private version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;)Z
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->getFile_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->getFile_md5()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->getFile_md5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFile_md5()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->file_md5:Ljava/lang/String;

    return-object p0
.end method

.method public getFile_size()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->file_size:J

    return-wide v0
.end method

.method public getFile_url()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->file_url:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 109
    iget p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->id:I

    return p0
.end method

.method public getMax_app_version()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->max_app_version:J

    return-wide v0
.end method

.method public getMin_app_version()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->min_app_version:J

    return-wide v0
.end method

.method public getUpdate_description()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->update_description:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion_code()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->version_code:J

    return-wide v0
.end method

.method public getVersion_name()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->version_name:Ljava/lang/String;

    return-object p0
.end method

.method public setFile_md5(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->file_md5:Ljava/lang/String;

    return-void
.end method

.method public setFile_size(J)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->file_size:J

    return-void
.end method

.method public setFile_url(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->file_url:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->id:I

    return-void
.end method

.method public setMax_app_version(J)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->max_app_version:J

    return-void
.end method

.method public setMin_app_version(J)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->min_app_version:J

    return-void
.end method

.method public setUpdate_description(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->update_description:Ljava/lang/String;

    return-void
.end method

.method public setVersion_code(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->version_code:J

    return-void
.end method

.method public setVersion_name(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->version_name:Ljava/lang/String;

    return-void
.end method
