.class Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ContentLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$2;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 79
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$2;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->getFragments()[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$2;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->access$000(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$2;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->getFragments()[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getTrackKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "yes"

    const-string v2, "mora_homepage_tab"

    invoke-virtual {v0, v1, v2, p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
