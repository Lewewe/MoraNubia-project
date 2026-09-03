.class Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$1;
.super Ljava/lang/Object;
.source "AIAssistantSettingsManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;)I
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 34
    check-cast p1, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;

    check-cast p2, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$1;->compare(Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;)I

    move-result p0

    return p0
.end method
