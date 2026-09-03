.class Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;
.super Ljava/lang/Object;
.source "MobileLiveService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->showMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 680
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCharactorClick(Ljava/lang/String;)V
    .locals 3

    .line 727
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 728
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$2000(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2, v0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$500(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;JZ)V

    :cond_1
    return-void
.end method

.method public onClickMainNenuItem(IZ)V
    .locals 5

    if-eqz p1, :cond_8

    .line 683
    const-string v0, "MobileLiveService"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 715
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    const-class v1, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x18000000

    .line 716
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 717
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->startActivity(Landroid/content/Intent;)V

    .line 718
    const-string p0, "onClickMainNenuItem:  setting"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 712
    :cond_1
    const-string p0, "onClickMainNenuItem: charactor"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    const/4 p1, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    .line 689
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1700(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->getMode()I

    move-result v4

    if-nez v4, :cond_3

    .line 690
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    const-wide/16 v3, 0x0

    invoke-static {p0, v3, v4, v2}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$500(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;JZ)V

    goto :goto_0

    .line 692
    :cond_3
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1800(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    .line 693
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$600(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)I

    move-result v4

    if-ne v4, v1, :cond_4

    .line 694
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v1, p1, v3}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    .line 695
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0, v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    goto :goto_0

    .line 696
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$600(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 697
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0, v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    goto :goto_0

    .line 701
    :cond_5
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1800(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    .line 702
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v4}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$600(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)I

    move-result v4

    if-ne v4, v1, :cond_6

    .line 703
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {v1, p1, v3}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    .line 704
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0, v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    goto :goto_0

    .line 705
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$600(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 706
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0, v2, v3}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$900(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;IF)V

    .line 709
    :cond_7
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onClickMainNenuItem: face "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 685
    :cond_8
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->access$1600(Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;)V

    :goto_1
    return-void
.end method

.method public onHideMenu()V
    .locals 0

    .line 734
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService$4;->this$0:Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/service/MobileLiveService;->hideMenu()V

    return-void
.end method
