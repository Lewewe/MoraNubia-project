.class Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;
.super Ljava/lang/Object;
.source "AlarmEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->adjustPreviewUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private rootHeight:I

.field private rootWidth:I

.field private scale:F

.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

.field final synthetic val$originHeight:F

.field final synthetic val$originWidth:F

.field final synthetic val$rootView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;Landroid/view/ViewGroup;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1088
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->val$rootView:Landroid/view/ViewGroup;

    iput p3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->val$originWidth:F

    iput p4, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->val$originHeight:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getScaledSize(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1111
    iget p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->scale:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p1, p0

    :cond_0
    return p1
.end method

.method private getScaledSize(I)I
    .locals 0

    if-lez p1, :cond_0

    int-to-float p1, p1

    .line 1107
    iget p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->scale:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_0
    return p1
.end method

.method private scaleInner(Landroid/view/View;)V
    .locals 4

    .line 1124
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1125
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1128
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1129
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1130
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1131
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1132
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1133
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1134
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1135
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1136
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(I)I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private scaleInnerViewGroup(Landroid/view/View;)V
    .locals 3

    .line 1146
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1147
    check-cast p1, Landroid/view/ViewGroup;

    .line 1148
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->scaleInner(Landroid/view/View;)V

    .line 1149
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1151
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1152
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->scaleInnerViewGroup(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1155
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->scaleInner(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private scaleOutter(Landroid/view/View;)V
    .locals 4

    .line 1115
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1116
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1117
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->getScaledSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_preview_root:I

    if-ne v1, v2, :cond_0

    .line 1119
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->rootWidth:I

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v2, v3

    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_action_list_view:I

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int/2addr v2, p0

    div-int/lit8 v2, v2, 0x2

    int-to-float p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1121
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private scaleOutterViewGroup(Landroid/view/ViewGroup;)V
    .locals 2

    const/4 v0, 0x0

    .line 1140
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1141
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->scaleOutter(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1095
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->val$rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->rootHeight:I

    int-to-float v0, v0

    .line 1096
    iget v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->val$originWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->val$originHeight:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->rootWidth:I

    .line 1097
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->val$rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->rootWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->scale:F

    .line 1098
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->val$rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1099
    iget v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->rootWidth:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1100
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->val$rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1101
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->val$rootView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->scaleOutterViewGroup(Landroid/view/ViewGroup;)V

    .line 1103
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_alarm_drag:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$9;->scaleInnerViewGroup(Landroid/view/View;)V

    return-void
.end method
