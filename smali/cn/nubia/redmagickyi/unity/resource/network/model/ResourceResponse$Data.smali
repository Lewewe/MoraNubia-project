.class public Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$Data;
.super Ljava/lang/Object;
.source "ResourceResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private bot_name:Ljava/lang/String;

.field private id:I

.field private red_magic_bot_item:Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;

.field final synthetic this$0:Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;


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

    .line 11
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$Data;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBot_name()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$Data;->bot_name:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 33
    iget p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$Data;->id:I

    return p0
.end method

.method public getRed_magic_bot_item()Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$Data;->red_magic_bot_item:Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;

    return-object p0
.end method

.method public setBot_name(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$Data;->bot_name:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$Data;->id:I

    return-void
.end method

.method public setRed_magic_bot_item(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$Data;->red_magic_bot_item:Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;

    return-void
.end method
