.class Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager$1;
.super Ljava/lang/Object;
.source "SkinOnlineDataManager.java"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->parseSkinsResponse(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;I)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/ToIntFunction<",
        "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

.field final synthetic val$indexMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;Ljava/util/Map;)V
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

    .line 127
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager$1;->this$0:Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager$1;->val$indexMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsInt(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)I
    .locals 0

    .line 130
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager$1;->val$indexMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public bridge synthetic applyAsInt(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 127
    check-cast p1, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager$1;->applyAsInt(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)I

    move-result p0

    return p0
.end method
