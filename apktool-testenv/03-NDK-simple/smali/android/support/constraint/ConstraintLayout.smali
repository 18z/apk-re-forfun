.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final DEBUG:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.1.0"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMetrics:Landroid/support/constraint/solver/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 560
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 489
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 499
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 501
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 502
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 503
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 504
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 507
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 508
    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 510
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 512
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 515
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 516
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 517
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 518
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 519
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 520
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 561
    invoke-direct {p0, v5}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 562
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 565
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 489
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 499
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 501
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 502
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 503
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 504
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 507
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 510
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 512
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 515
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 516
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 517
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 518
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 519
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 520
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 566
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 567
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 570
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 489
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 499
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 501
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 502
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 503
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 504
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 507
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 510
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 512
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 515
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 516
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 517
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 518
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 519
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 520
    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 571
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 572
    return-void
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1120
    if-nez p1, :cond_0

    .line 1121
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1127
    :goto_0
    return-object v1

    .line 1123
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1124
    .local v0, "view":Landroid/view/View;
    if-ne v0, p0, :cond_1

    .line 1125
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    goto :goto_0

    .line 1127
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    .line 585
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 586
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v7

    invoke-virtual {v6, v7, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 587
    iput-object v8, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 588
    if-eqz p1, :cond_7

    .line 589
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 590
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 591
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_6

    .line 592
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 593
    .local v2, "attr":I
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v2, v6, :cond_1

    .line 594
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 591
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 595
    :cond_1
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v2, v6, :cond_2

    .line 596
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    goto :goto_1

    .line 597
    :cond_2
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v2, v6, :cond_3

    .line 598
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    goto :goto_1

    .line 599
    :cond_3
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v2, v6, :cond_4

    .line 600
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    goto :goto_1

    .line 601
    :cond_4
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v2, v6, :cond_5

    .line 602
    iget v6, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_1

    .line 603
    :cond_5
    sget v6, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v2, v6, :cond_0

    .line 604
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 606
    .local v5, "id":I
    :try_start_0
    new-instance v6, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v6}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v6, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 607
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_2
    iput v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    goto :goto_1

    .line 608
    :catch_0
    move-exception v3

    .line 609
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v8, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    goto :goto_2

    .line 614
    .end local v2    # "attr":I
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "id":I
    :cond_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 616
    .end local v0    # "N":I
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "i":I
    :cond_7
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v7, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 617
    return-void
.end method

.method private internalMeasureChildren(II)V
    .locals 24
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    .prologue
    .line 1144
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v20

    add-int v12, v19, v20

    .line 1145
    .local v12, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v20

    add-int v18, v19, v20

    .line 1147
    .local v18, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v16

    .line 1148
    .local v16, "widgetsCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_11

    .line 1149
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1150
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 1148
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1153
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1154
    .local v14, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v15, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1155
    .local v15, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 1158
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1160
    iget v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v17, v0

    .line 1161
    .local v17, "width":I
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1165
    .local v11, "height":I
    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    iget v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    :cond_2
    iget v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    iget v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    iget v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    :cond_3
    const/4 v10, 0x1

    .line 1175
    .local v10, "doMeasure":Z
    :goto_2
    const/4 v9, 0x0

    .line 1176
    .local v9, "didWrapMeasureWidth":Z
    const/4 v8, 0x0

    .line 1178
    .local v8, "didWrapMeasureHeight":Z
    if-eqz v10, :cond_5

    .line 1182
    if-nez v17, :cond_9

    .line 1183
    const/16 v19, -0x2

    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v7

    .line 1185
    .local v7, "childWidthMeasureSpec":I
    const/4 v9, 0x1

    .line 1196
    :goto_3
    if-nez v11, :cond_c

    .line 1197
    const/16 v19, -0x2

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v12, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 1199
    .local v6, "childHeightMeasureSpec":I
    const/4 v8, 0x1

    .line 1210
    :goto_4
    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->measures:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->measures:J

    .line 1215
    :cond_4
    const/16 v19, -0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1216
    const/16 v19, -0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_10

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1217
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1218
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 1221
    .end local v6    # "childHeightMeasureSpec":I
    .end local v7    # "childWidthMeasureSpec":I
    :cond_5
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1222
    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1224
    if-eqz v9, :cond_6

    .line 1225
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1227
    :cond_6
    if-eqz v8, :cond_7

    .line 1228
    invoke-virtual {v15, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1231
    :cond_7
    iget-boolean v0, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1232
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1233
    .local v4, "baseline":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v4, v0, :cond_0

    .line 1234
    invoke-virtual {v15, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto/16 :goto_1

    .line 1165
    .end local v4    # "baseline":I
    .end local v8    # "didWrapMeasureHeight":Z
    .end local v9    # "didWrapMeasureWidth":Z
    .end local v10    # "doMeasure":Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1186
    .restart local v8    # "didWrapMeasureHeight":Z
    .restart local v9    # "didWrapMeasureWidth":Z
    .restart local v10    # "doMeasure":Z
    :cond_9
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1187
    const/16 v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v7

    .restart local v7    # "childWidthMeasureSpec":I
    goto/16 :goto_3

    .line 1190
    .end local v7    # "childWidthMeasureSpec":I
    :cond_a
    const/16 v19, -0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1191
    const/4 v9, 0x1

    .line 1193
    :cond_b
    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v7

    .restart local v7    # "childWidthMeasureSpec":I
    goto/16 :goto_3

    .line 1200
    :cond_c
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_d

    .line 1201
    const/16 v19, -0x1

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v12, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v6

    .restart local v6    # "childHeightMeasureSpec":I
    goto/16 :goto_4

    .line 1204
    .end local v6    # "childHeightMeasureSpec":I
    :cond_d
    const/16 v19, -0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_e

    .line 1205
    const/4 v8, 0x1

    .line 1207
    :cond_e
    move/from16 v0, p2

    invoke-static {v0, v12, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v6

    .restart local v6    # "childHeightMeasureSpec":I
    goto/16 :goto_4

    .line 1215
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1216
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 1238
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childHeightMeasureSpec":I
    .end local v7    # "childWidthMeasureSpec":I
    .end local v8    # "didWrapMeasureHeight":Z
    .end local v9    # "didWrapMeasureWidth":Z
    .end local v10    # "doMeasure":Z
    .end local v11    # "height":I
    .end local v14    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v15    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v17    # "width":I
    :cond_11
    return-void
.end method

.method private internalMeasureDimensions(II)V
    .locals 32
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    .prologue
    .line 1266
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v27

    add-int v14, v26, v27

    .line 1267
    .local v14, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v27

    add-int v25, v26, v27

    .line 1269
    .local v25, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v23

    .line 1270
    .local v23, "widgetsCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v23

    if-ge v15, v0, :cond_c

    .line 1271
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1272
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1270
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1275
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1276
    .local v17, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v22, v0

    .line 1277
    .local v22, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 1280
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1282
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v24, v0

    .line 1283
    .local v24, "width":I
    move-object/from16 v0, v17

    iget v13, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1285
    .local v13, "height":I
    if-eqz v24, :cond_2

    if-nez v13, :cond_3

    .line 1286
    :cond_2
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1287
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    goto :goto_1

    .line 1291
    :cond_3
    const/4 v12, 0x0

    .line 1292
    .local v12, "didWrapMeasureWidth":Z
    const/4 v11, 0x0

    .line 1296
    .local v11, "didWrapMeasureHeight":Z
    const/16 v26, -0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 1297
    const/4 v12, 0x1

    .line 1299
    :cond_4
    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 1301
    .local v10, "childWidthMeasureSpec":I
    const/16 v26, -0x2

    move/from16 v0, v26

    if-ne v13, v0, :cond_5

    .line 1302
    const/4 v11, 0x1

    .line 1304
    :cond_5
    move/from16 v0, p2

    invoke-static {v0, v14, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    .line 1306
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->measures:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->measures:J

    .line 1311
    :cond_6
    const/16 v26, -0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1312
    const/16 v26, -0x2

    move/from16 v0, v26

    if-ne v13, v0, :cond_b

    const/16 v26, 0x1

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1313
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 1314
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1316
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1317
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1319
    if-eqz v12, :cond_7

    .line 1320
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1322
    :cond_7
    if-eqz v11, :cond_8

    .line 1323
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1326
    :cond_8
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9

    .line 1327
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1328
    .local v4, "baseline":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_9

    .line 1329
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1333
    .end local v4    # "baseline":I
    :cond_9
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1334
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1335
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto/16 :goto_1

    .line 1311
    :cond_a
    const/16 v26, 0x0

    goto :goto_2

    .line 1312
    :cond_b
    const/16 v26, 0x0

    goto :goto_3

    .line 1340
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v11    # "didWrapMeasureHeight":Z
    .end local v12    # "didWrapMeasureWidth":Z
    .end local v13    # "height":I
    .end local v17    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v22    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v24    # "width":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1342
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v23

    if-ge v15, v0, :cond_26

    .line 1343
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1344
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 1342
    :cond_d
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1347
    :cond_e
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1348
    .restart local v17    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v22, v0

    .line 1349
    .restart local v22    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v26, v0

    if-nez v26, :cond_d

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v26, v0

    if-nez v26, :cond_d

    .line 1352
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1354
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v24, v0

    .line 1355
    .restart local v24    # "width":I
    move-object/from16 v0, v17

    iget v13, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1357
    .restart local v13    # "height":I
    if-eqz v24, :cond_f

    if-nez v13, :cond_d

    .line 1361
    :cond_f
    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v16

    .line 1362
    .local v16, "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v20

    .line 1363
    .local v20, "right":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    if-eqz v26, :cond_16

    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1364
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    if-eqz v26, :cond_16

    const/4 v5, 0x1

    .line 1365
    .local v5, "bothHorizontal":Z
    :goto_6
    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v21

    .line 1366
    .local v21, "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    .line 1367
    .local v7, "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    if-eqz v26, :cond_17

    sget-object v26, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1368
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v26

    if-eqz v26, :cond_17

    const/4 v6, 0x1

    .line 1370
    .local v6, "bothVertical":Z
    :goto_7
    if-nez v24, :cond_10

    if-nez v13, :cond_10

    if-eqz v5, :cond_10

    if-nez v6, :cond_d

    .line 1374
    :cond_10
    const/4 v12, 0x0

    .line 1375
    .restart local v12    # "didWrapMeasureWidth":Z
    const/4 v11, 0x0

    .line 1376
    .restart local v11    # "didWrapMeasureHeight":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v26

    sget-object v27, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_18

    const/16 v19, 0x1

    .line 1377
    .local v19, "resolveWidth":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v26

    sget-object v27, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_19

    const/16 v18, 0x1

    .line 1382
    .local v18, "resolveHeight":Z
    :goto_9
    if-nez v19, :cond_11

    .line 1383
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1385
    :cond_11
    if-nez v18, :cond_12

    .line 1386
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1388
    :cond_12
    if-nez v24, :cond_1b

    .line 1389
    if-eqz v19, :cond_1a

    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadWidth()Z

    move-result v26

    if-eqz v26, :cond_1a

    if-eqz v5, :cond_1a

    invoke-virtual/range {v16 .. v16}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v26

    if-eqz v26, :cond_1a

    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 1390
    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v26

    invoke-virtual/range {v16 .. v16}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v27

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1391
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1392
    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 1410
    .restart local v10    # "childWidthMeasureSpec":I
    :goto_a
    if-nez v13, :cond_1f

    .line 1411
    if-eqz v18, :cond_1e

    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadHeight()Z

    move-result v26

    if-eqz v26, :cond_1e

    if-eqz v6, :cond_1e

    invoke-virtual/range {v21 .. v21}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v26

    if-eqz v26, :cond_1e

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 1412
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v26

    invoke-virtual/range {v21 .. v21}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v27

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v13, v0

    .line 1413
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1414
    move/from16 v0, p2

    invoke-static {v0, v14, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    .line 1432
    .restart local v9    # "childHeightMeasureSpec":I
    :goto_b
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->measures:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->measures:J

    .line 1437
    :cond_13
    const/16 v26, -0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_22

    const/16 v26, 0x1

    :goto_c
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1438
    const/16 v26, -0x2

    move/from16 v0, v26

    if-ne v13, v0, :cond_23

    const/16 v26, 0x1

    :goto_d
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1439
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 1440
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1442
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1443
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1445
    if-eqz v12, :cond_14

    .line 1446
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1448
    :cond_14
    if-eqz v11, :cond_15

    .line 1449
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1451
    :cond_15
    if-eqz v19, :cond_24

    .line 1452
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1456
    :goto_e
    if-eqz v18, :cond_25

    .line 1457
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1462
    :goto_f
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 1463
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1464
    .restart local v4    # "baseline":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_d

    .line 1465
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto/16 :goto_5

    .line 1364
    .end local v4    # "baseline":I
    .end local v5    # "bothHorizontal":Z
    .end local v6    # "bothVertical":Z
    .end local v7    # "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v11    # "didWrapMeasureHeight":Z
    .end local v12    # "didWrapMeasureWidth":Z
    .end local v18    # "resolveHeight":Z
    .end local v19    # "resolveWidth":Z
    .end local v21    # "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 1368
    .restart local v5    # "bothHorizontal":Z
    .restart local v7    # "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v21    # "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 1376
    .restart local v6    # "bothVertical":Z
    .restart local v11    # "didWrapMeasureHeight":Z
    .restart local v12    # "didWrapMeasureWidth":Z
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1377
    .restart local v19    # "resolveWidth":Z
    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 1395
    .restart local v18    # "resolveHeight":Z
    :cond_1a
    const/16 v26, -0x2

    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 1397
    .restart local v10    # "childWidthMeasureSpec":I
    const/4 v12, 0x1

    .line 1398
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 1400
    .end local v10    # "childWidthMeasureSpec":I
    :cond_1b
    const/16 v26, -0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 1401
    const/16 v26, -0x1

    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    .restart local v10    # "childWidthMeasureSpec":I
    goto/16 :goto_a

    .line 1404
    .end local v10    # "childWidthMeasureSpec":I
    :cond_1c
    const/16 v26, -0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    .line 1405
    const/4 v12, 0x1

    .line 1407
    :cond_1d
    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    .restart local v10    # "childWidthMeasureSpec":I
    goto/16 :goto_a

    .line 1417
    :cond_1e
    const/16 v26, -0x2

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v14, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    .line 1419
    .restart local v9    # "childHeightMeasureSpec":I
    const/4 v11, 0x1

    .line 1420
    const/16 v18, 0x0

    goto/16 :goto_b

    .line 1422
    .end local v9    # "childHeightMeasureSpec":I
    :cond_1f
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v13, v0, :cond_20

    .line 1423
    const/16 v26, -0x1

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v14, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    .restart local v9    # "childHeightMeasureSpec":I
    goto/16 :goto_b

    .line 1426
    .end local v9    # "childHeightMeasureSpec":I
    :cond_20
    const/16 v26, -0x2

    move/from16 v0, v26

    if-ne v13, v0, :cond_21

    .line 1427
    const/4 v11, 0x1

    .line 1429
    :cond_21
    move/from16 v0, p2

    invoke-static {v0, v14, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    .restart local v9    # "childHeightMeasureSpec":I
    goto/16 :goto_b

    .line 1437
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_c

    .line 1438
    :cond_23
    const/16 v26, 0x0

    goto/16 :goto_d

    .line 1454
    :cond_24
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    goto/16 :goto_e

    .line 1459
    :cond_25
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    goto/16 :goto_f

    .line 1469
    .end local v5    # "bothHorizontal":Z
    .end local v6    # "bothVertical":Z
    .end local v7    # "bottom":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v11    # "didWrapMeasureHeight":Z
    .end local v12    # "didWrapMeasureWidth":Z
    .end local v13    # "height":I
    .end local v16    # "left":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v17    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v18    # "resolveHeight":Z
    .end local v19    # "resolveWidth":Z
    .end local v20    # "right":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v21    # "top":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v22    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v24    # "width":I
    :cond_26
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 41

    .prologue
    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v28

    .line 800
    .local v28, "isInEditMode":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v23

    .line 801
    .local v23, "count":I
    if-eqz v28, :cond_1

    .line 805
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 806
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    .line 808
    .local v40, "view":Landroid/view/View;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v21

    .line 809
    .local v21, "IdAsString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1, v5}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 810
    const/16 v3, 0x2f

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v38

    .line 811
    .local v38, "slashIndex":I
    const/4 v3, -0x1

    move/from16 v0, v38

    if-eq v0, v3, :cond_0

    .line 812
    add-int/lit8 v3, v38, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 814
    :cond_0
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 805
    .end local v21    # "IdAsString":Ljava/lang/String;
    .end local v38    # "slashIndex":I
    :goto_1
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 822
    .end local v27    # "i":I
    .end local v40    # "view":Landroid/view/View;
    :cond_1
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 823
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 824
    .local v22, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 825
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v2, :cond_2

    .line 822
    :goto_3
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 828
    :cond_2
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    goto :goto_3

    .line 831
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v22    # "child":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    .line 832
    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 833
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 834
    .restart local v22    # "child":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-ne v3, v5, :cond_4

    move-object/from16 v0, v22

    instance-of v3, v0, Landroid/support/constraint/Constraints;

    if-eqz v3, :cond_4

    .line 835
    check-cast v22, Landroid/support/constraint/Constraints;

    .end local v22    # "child":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/Constraints;->getConstraintSet()Landroid/support/constraint/ConstraintSet;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 832
    :cond_4
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 839
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz v3, :cond_6

    .line 840
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    .line 843
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 845
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 846
    .local v26, "helperCount":I
    if-lez v26, :cond_7

    .line 847
    const/16 v27, 0x0

    :goto_5
    move/from16 v0, v27

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/support/constraint/ConstraintHelper;

    .line 849
    .local v25, "helper":Landroid/support/constraint/ConstraintHelper;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 847
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 853
    .end local v25    # "helper":Landroid/support/constraint/ConstraintHelper;
    :cond_7
    const/16 v27, 0x0

    :goto_6
    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 854
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 855
    .restart local v22    # "child":Landroid/view/View;
    move-object/from16 v0, v22

    instance-of v3, v0, Landroid/support/constraint/Placeholder;

    if-eqz v3, :cond_8

    .line 856
    check-cast v22, Landroid/support/constraint/Placeholder;

    .end local v22    # "child":Landroid/view/View;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/constraint/Placeholder;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 853
    :cond_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_6

    .line 859
    :cond_9
    const/16 v27, 0x0

    :goto_7
    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_2d

    .line 860
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 861
    .restart local v22    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 862
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v2, :cond_b

    .line 859
    :cond_a
    :goto_8
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 865
    :cond_b
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 866
    .local v29, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual/range {v29 .. v29}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 867
    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    if-eqz v3, :cond_11

    .line 868
    const/4 v3, 0x0

    move-object/from16 v0, v29

    iput-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 884
    :cond_c
    :goto_9
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 885
    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v3, :cond_d

    .line 886
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 888
    :cond_d
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 891
    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v3, :cond_f

    .line 892
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    :cond_f
    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v3, :cond_14

    move-object/from16 v24, v2

    .line 896
    check-cast v24, Landroid/support/constraint/solver/widgets/Guideline;

    .line 897
    .local v24, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    move/from16 v30, v0

    .line 898
    .local v30, "resolvedGuideBegin":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    move/from16 v31, v0

    .line 899
    .local v31, "resolvedGuideEnd":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    move/from16 v32, v0

    .line 900
    .local v32, "resolvedGuidePercent":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_10

    .line 901
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    move/from16 v30, v0

    .line 902
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    move/from16 v31, v0

    .line 903
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    move/from16 v32, v0

    .line 905
    :cond_10
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v32, v3

    if-eqz v3, :cond_12

    .line 906
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto/16 :goto_8

    .line 870
    .end local v24    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    .end local v30    # "resolvedGuideBegin":I
    .end local v31    # "resolvedGuideEnd":I
    .end local v32    # "resolvedGuidePercent":F
    :cond_11
    if-eqz v28, :cond_c

    .line 875
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v21

    .line 876
    .restart local v21    # "IdAsString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1, v5}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 877
    const-string v3, "id/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 878
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 879
    .end local v21    # "IdAsString":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_9

    .line 907
    .restart local v24    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    .restart local v30    # "resolvedGuideBegin":I
    .restart local v31    # "resolvedGuideEnd":I
    .restart local v32    # "resolvedGuidePercent":F
    :cond_12
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_13

    .line 908
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto/16 :goto_8

    .line 909
    :cond_13
    const/4 v3, -0x1

    move/from16 v0, v31

    if-eq v0, v3, :cond_a

    .line 910
    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto/16 :goto_8

    .line 912
    .end local v24    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    .end local v30    # "resolvedGuideBegin":I
    .end local v31    # "resolvedGuideEnd":I
    .end local v32    # "resolvedGuidePercent":F
    :cond_14
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_15

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_a

    .line 932
    :cond_15
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    move/from16 v34, v0

    .line 933
    .local v34, "resolvedLeftToLeft":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    move/from16 v35, v0

    .line 934
    .local v35, "resolvedLeftToRight":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    move/from16 v36, v0

    .line 935
    .local v36, "resolvedRightToLeft":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    move/from16 v37, v0

    .line 936
    .local v37, "resolvedRightToRight":I
    move-object/from16 v0, v29

    iget v7, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 937
    .local v7, "resolveGoneLeftMargin":I
    move-object/from16 v0, v29

    iget v13, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 938
    .local v13, "resolveGoneRightMargin":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    move/from16 v33, v0

    .line 940
    .local v33, "resolvedHorizontalBias":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_17

    .line 943
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    move/from16 v34, v0

    .line 944
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    move/from16 v35, v0

    .line 945
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    move/from16 v36, v0

    .line 946
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    move/from16 v37, v0

    .line 947
    move-object/from16 v0, v29

    iget v7, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 948
    move-object/from16 v0, v29

    iget v13, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 949
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    move/from16 v33, v0

    .line 951
    const/4 v3, -0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_16

    const/4 v3, -0x1

    move/from16 v0, v35

    if-ne v0, v3, :cond_16

    .line 952
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1c

    .line 953
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v34, v0

    .line 958
    :cond_16
    :goto_a
    const/4 v3, -0x1

    move/from16 v0, v36

    if-ne v0, v3, :cond_17

    const/4 v3, -0x1

    move/from16 v0, v37

    if-ne v0, v3, :cond_17

    .line 959
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1d

    .line 960
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v36, v0

    .line 968
    :cond_17
    :goto_b
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1e

    .line 969
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 970
    .local v4, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_18

    .line 971
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v2, v4, v3, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    .line 1069
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_18
    :goto_c
    if-eqz v28, :cond_1a

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_19

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1a

    .line 1071
    :cond_19
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v2, v3, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 1075
    :cond_1a
    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v3, :cond_2a

    .line 1076
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_29

    .line 1077
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1078
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1079
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1088
    :goto_d
    move-object/from16 v0, v29

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v3, :cond_2c

    .line 1089
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2b

    .line 1090
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1091
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iput v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1092
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1102
    :goto_e
    move-object/from16 v0, v29

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 1103
    move-object/from16 v0, v29

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 1105
    :cond_1b
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 1106
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 1107
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1108
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1109
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    move-object/from16 v0, v29

    iget v8, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v2, v3, v5, v6, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 1112
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    move-object/from16 v0, v29

    iget v8, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v2, v3, v5, v6, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    goto/16 :goto_8

    .line 954
    :cond_1c
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_16

    .line 955
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v35, v0

    goto/16 :goto_a

    .line 961
    :cond_1d
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_17

    .line 962
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v37, v0

    goto/16 :goto_b

    .line 975
    :cond_1e
    const/4 v3, -0x1

    move/from16 v0, v34

    if-eq v0, v3, :cond_25

    .line 976
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 977
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_1f

    .line 978
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 992
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1f
    :goto_f
    const/4 v3, -0x1

    move/from16 v0, v36

    if-eq v0, v3, :cond_26

    .line 993
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 994
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_20

    .line 995
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v12, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v8, v2

    move-object v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1009
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_20
    :goto_10
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_27

    .line 1010
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1011
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_21

    .line 1012
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1026
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_21
    :goto_11
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_28

    .line 1027
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1028
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_22

    .line 1029
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1043
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_22
    :goto_12
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_23

    .line 1044
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object/from16 v0, v29

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/view/View;

    .line 1045
    .restart local v40    # "view":Landroid/view/View;
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1046
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_23

    if-eqz v40, :cond_23

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v3, :cond_23

    .line 1047
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v39

    check-cast v39, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1048
    .local v39, "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    const/4 v3, 0x1

    move-object/from16 v0, v29

    iput-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1049
    const/4 v3, 0x1

    move-object/from16 v0, v39

    iput-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1050
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    .line 1051
    .local v14, "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1052
    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    .line 1053
    .local v15, "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v16, 0x0

    const/16 v17, -0x1

    sget-object v18, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 1056
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1057
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1061
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v15    # "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v39    # "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v40    # "view":Landroid/view/View;
    :cond_23
    const/4 v3, 0x0

    cmpl-float v3, v33, v3

    if-ltz v3, :cond_24

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v33, v3

    if-eqz v3, :cond_24

    .line 1062
    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1064
    :cond_24
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_18

    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_18

    .line 1065
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    goto/16 :goto_c

    .line 982
    :cond_25
    const/4 v3, -0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_1f

    .line 983
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 984
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_1f

    .line 985
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_f

    .line 999
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_26
    const/4 v3, -0x1

    move/from16 v0, v37

    if-eq v0, v3, :cond_20

    .line 1000
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1001
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_20

    .line 1002
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v12, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v8, v2

    move-object v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_10

    .line 1016
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_27
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_21

    .line 1017
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1018
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_21

    .line 1019
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_11

    .line 1033
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_28
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_22

    .line 1034
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 1035
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_22

    .line 1036
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_12

    .line 1081
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_29
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1082
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_d

    .line 1085
    :cond_2a
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1086
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_d

    .line 1094
    :cond_2b
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1095
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto/16 :goto_e

    .line 1098
    :cond_2c
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1099
    move-object/from16 v0, v29

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto/16 :goto_e

    .line 1117
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "resolveGoneLeftMargin":I
    .end local v13    # "resolveGoneRightMargin":I
    .end local v22    # "child":Landroid/view/View;
    .end local v29    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v33    # "resolvedHorizontalBias":F
    .end local v34    # "resolvedLeftToLeft":I
    .end local v35    # "resolvedLeftToRight":I
    .end local v36    # "resolvedRightToLeft":I
    .end local v37    # "resolvedRightToRight":I
    :cond_2d
    return-void

    .line 815
    .end local v26    # "helperCount":I
    .restart local v40    # "view":Landroid/view/View;
    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method private setSelfDimensionBehaviour(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1738
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1739
    .local v8, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1740
    .local v10, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1741
    .local v3, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1743
    .local v5, "heightSize":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v12

    add-int v4, v11, v12

    .line 1744
    .local v4, "heightPadding":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v12

    add-int v9, v11, v12

    .line 1746
    .local v9, "widthPadding":I
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1747
    .local v7, "widthBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1748
    .local v2, "heightBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v1, 0x0

    .line 1749
    .local v1, "desiredWidth":I
    const/4 v0, 0x0

    .line 1751
    .local v0, "desiredHeight":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1752
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    sparse-switch v8, :sswitch_data_0

    .line 1766
    :goto_0
    sparse-switch v3, :sswitch_data_1

    .line 1781
    :goto_1
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1782
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1783
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1784
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1785
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1786
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1787
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v12, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1788
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v12, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1789
    return-void

    .line 1754
    :sswitch_0
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1755
    move v1, v10

    .line 1757
    goto :goto_0

    .line 1759
    :sswitch_1
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1761
    goto :goto_0

    .line 1763
    :sswitch_2
    iget v11, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v1, v11, v9

    goto :goto_0

    .line 1768
    :sswitch_3
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1769
    move v0, v5

    .line 1771
    goto :goto_1

    .line 1773
    :sswitch_4
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1775
    goto :goto_1

    .line 1777
    :sswitch_5
    iget v11, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v0, v11, v4

    goto :goto_1

    .line 1752
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 1766
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private updateHierarchy()V
    .locals 5

    .prologue
    .line 781
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 783
    .local v1, "count":I
    const/4 v3, 0x0

    .line 784
    .local v3, "recompute":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 785
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 786
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 787
    const/4 v3, 0x1

    .line 791
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    if-eqz v3, :cond_1

    .line 792
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 793
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    .line 795
    :cond_1
    return-void

    .line 784
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updatePostMeasures()V
    .locals 6

    .prologue
    .line 1241
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v4

    .line 1242
    .local v4, "widgetsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 1243
    invoke-virtual {p0, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1244
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/support/constraint/Placeholder;

    if-eqz v5, :cond_0

    .line 1245
    check-cast v0, Landroid/support/constraint/Placeholder;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/support/constraint/Placeholder;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 1242
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1249
    :cond_1
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1250
    .local v2, "helperCount":I
    if-lez v2, :cond_2

    .line 1251
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 1252
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintHelper;

    .line 1253
    .local v1, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v1, p0}, Landroid/support/constraint/ConstraintHelper;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 1251
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1256
    .end local v1    # "helper":Landroid/support/constraint/ConstraintHelper;
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 624
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 625
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 626
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 628
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1936
    instance-of v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1963
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1964
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1965
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v10

    .line 1966
    .local v10, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v11, v1

    .line 1967
    .local v11, "cw":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getHeight()I

    move-result v1

    int-to-float v7, v1

    .line 1968
    .local v7, "ch":F
    const/high16 v15, 0x44870000    # 1080.0f

    .line 1969
    .local v15, "ow":F
    const/high16 v14, 0x44f00000    # 1920.0f

    .line 1970
    .local v14, "oh":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v10, :cond_2

    .line 1971
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1972
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 1970
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1975
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 1976
    .local v17, "tag":Ljava/lang/Object;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v9, v17

    .line 1977
    check-cast v9, Ljava/lang/String;

    .line 1978
    .local v9, "coordinates":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1979
    .local v16, "split":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1980
    const/4 v1, 0x0

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1981
    .local v19, "x":I
    const/4 v1, 0x1

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1982
    .local v20, "y":I
    const/4 v1, 0x2

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1983
    .local v18, "w":I
    const/4 v1, 0x3

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1984
    .local v12, "h":I
    move/from16 v0, v19

    int-to-float v1, v0

    div-float/2addr v1, v15

    mul-float/2addr v1, v11

    float-to-int v0, v1

    move/from16 v19, v0

    .line 1985
    move/from16 v0, v20

    int-to-float v1, v0

    div-float/2addr v1, v14

    mul-float/2addr v1, v7

    float-to-int v0, v1

    move/from16 v20, v0

    .line 1986
    move/from16 v0, v18

    int-to-float v1, v0

    div-float/2addr v1, v15

    mul-float/2addr v1, v11

    float-to-int v0, v1

    move/from16 v18, v0

    .line 1987
    int-to-float v1, v12

    div-float/2addr v1, v14

    mul-float/2addr v1, v7

    float-to-int v12, v1

    .line 1988
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1989
    .local v6, "paint":Landroid/graphics/Paint;
    const/high16 v1, -0x10000

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1990
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    add-int v1, v19, v18

    int-to-float v4, v1

    move/from16 v0, v20

    int-to-float v5, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1991
    add-int v1, v19, v18

    int-to-float v2, v1

    move/from16 v0, v20

    int-to-float v3, v0

    add-int v1, v19, v18

    int-to-float v4, v1

    add-int v1, v20, v12

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1992
    add-int v1, v19, v18

    int-to-float v2, v1

    add-int v1, v20, v12

    int-to-float v3, v1

    move/from16 v0, v19

    int-to-float v4, v0

    add-int v1, v20, v12

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1993
    move/from16 v0, v19

    int-to-float v2, v0

    add-int v1, v20, v12

    int-to-float v3, v1

    move/from16 v0, v19

    int-to-float v4, v0

    move/from16 v0, v20

    int-to-float v5, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1994
    const v1, -0xff0100

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1995
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    add-int v1, v19, v18

    int-to-float v4, v1

    add-int v1, v20, v12

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1996
    move/from16 v0, v19

    int-to-float v2, v0

    add-int v1, v20, v12

    int-to-float v3, v1

    add-int v1, v19, v18

    int-to-float v4, v1

    move/from16 v0, v20

    int-to-float v5, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 2001
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "ch":F
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "coordinates":Ljava/lang/String;
    .end local v10    # "count":I
    .end local v11    # "cw":F
    .end local v12    # "h":I
    .end local v13    # "i":I
    .end local v14    # "oh":F
    .end local v15    # "ow":F
    .end local v16    # "split":[Ljava/lang/String;
    .end local v17    # "tag":Ljava/lang/Object;
    .end local v18    # "w":I
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_2
    return-void
.end method

.method public fillMetrics(Landroid/support/constraint/solver/Metrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/support/constraint/solver/Metrics;

    .prologue
    .line 1479
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    .line 1480
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->fillMetrics(Landroid/support/constraint/solver/Metrics;)V

    .line 1481
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1920
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1912
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1928
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 550
    if-nez p1, :cond_0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 551
    check-cast v0, Ljava/lang/String;

    .line 552
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 556
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1955
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1137
    if-ne p1, p0, :cond_0

    .line 1138
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1140
    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1815
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v14

    .line 1816
    .local v14, "widgetsCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v8

    .line 1817
    .local v8, "isInEditMode":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v14, :cond_2

    .line 1818
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1819
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1820
    .local v10, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v13, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1822
    .local v13, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    iget-boolean v15, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v15, :cond_1

    iget-boolean v15, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v15, :cond_1

    if-nez v8, :cond_1

    .line 1817
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1827
    :cond_1
    iget-boolean v15, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-nez v15, :cond_0

    .line 1830
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v9

    .line 1831
    .local v9, "l":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v12

    .line 1832
    .local v12, "t":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    add-int v11, v9, v15

    .line 1833
    .local v11, "r":I
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    add-int v1, v12, v15

    .line 1855
    .local v1, "b":I
    invoke-virtual {v2, v9, v12, v11, v1}, Landroid/view/View;->layout(IIII)V

    .line 1856
    instance-of v15, v2, Landroid/support/constraint/Placeholder;

    if-eqz v15, :cond_0

    move-object v6, v2

    .line 1857
    check-cast v6, Landroid/support/constraint/Placeholder;

    .line 1858
    .local v6, "holder":Landroid/support/constraint/Placeholder;
    invoke-virtual {v6}, Landroid/support/constraint/Placeholder;->getContent()Landroid/view/View;

    move-result-object v3

    .line 1859
    .local v3, "content":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1860
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1861
    invoke-virtual {v3, v9, v12, v11, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1865
    .end local v1    # "b":I
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "content":Landroid/view/View;
    .end local v6    # "holder":Landroid/support/constraint/Placeholder;
    .end local v9    # "l":I
    .end local v10    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v11    # "r":I
    .end local v12    # "t":I
    .end local v13    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1866
    .local v5, "helperCount":I
    if-lez v5, :cond_3

    .line 1867
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_3

    .line 1868
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintHelper;

    .line 1869
    .local v4, "helper":Landroid/support/constraint/ConstraintHelper;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/support/constraint/ConstraintHelper;->updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 1867
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1872
    .end local v4    # "helper":Landroid/support/constraint/ConstraintHelper;
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 52
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 1489
    .local v38, "time":J
    const/4 v4, 0x0

    .line 1490
    .local v4, "REMEASURES_A":I
    const/4 v5, 0x0

    .line 1496
    .local v5, "REMEASURES_B":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v43

    .line 1497
    .local v43, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v45

    .line 1498
    .local v45, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 1499
    .local v16, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 1501
    .local v18, "heightSize":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    move/from16 v47, v0

    const/16 v48, -0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    move/from16 v47, v0

    const/16 v48, -0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_4

    const/16 v40, 0x1

    .line 1502
    .local v40, "validLastMeasure":Z
    :goto_0
    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v43

    move/from16 v1, v47

    if-ne v0, v1, :cond_5

    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v47

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    move/from16 v47, v0

    move/from16 v0, v45

    move/from16 v1, v47

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    move/from16 v47, v0

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_5

    const/16 v34, 0x1

    .line 1504
    .local v34, "sameSize":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    move/from16 v47, v0

    move/from16 v0, v43

    move/from16 v1, v47

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    move/from16 v47, v0

    move/from16 v0, v16

    move/from16 v1, v47

    if-ne v0, v1, :cond_6

    const/16 v33, 0x1

    .line 1505
    .local v33, "sameMode":Z
    :goto_2
    if-eqz v33, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    move/from16 v47, v0

    move/from16 v0, v45

    move/from16 v1, v47

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    move/from16 v47, v0

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_7

    const/16 v32, 0x1

    .line 1507
    .local v32, "sameMeasure":Z
    :goto_3
    if-eqz v33, :cond_8

    const/high16 v47, -0x80000000

    move/from16 v0, v43

    move/from16 v1, v47

    if-ne v0, v1, :cond_8

    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v47

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    move/from16 v47, v0

    move/from16 v0, v45

    move/from16 v1, v47

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    move/from16 v47, v0

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_8

    const/4 v14, 0x1

    .line 1510
    .local v14, "fitSizeWidth":Z
    :goto_4
    if-eqz v33, :cond_9

    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v43

    move/from16 v1, v47

    if-ne v0, v1, :cond_9

    const/high16 v47, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v47

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    move/from16 v47, v0

    move/from16 v0, v45

    move/from16 v1, v47

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    move/from16 v47, v0

    move/from16 v0, v18

    move/from16 v1, v47

    if-lt v0, v1, :cond_9

    const/4 v13, 0x1

    .line 1518
    .local v13, "fitSizeHeight":Z
    :goto_5
    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 1519
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 1520
    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 1521
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 1523
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v27

    .line 1524
    .local v27, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v28

    .line 1526
    .local v28, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    .line 1531
    sget v47, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v48, 0x11

    move/from16 v0, v47

    move/from16 v1, v48

    if-lt v0, v1, :cond_0

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v48, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutDirection()I

    move-result v47

    const/16 v49, 0x1

    move/from16 v0, v47

    move/from16 v1, v49

    if-ne v0, v1, :cond_a

    const/16 v47, 0x1

    :goto_6
    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 1535
    :cond_0
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v37

    .line 1537
    .local v37, "startingWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v36

    .line 1538
    .local v36, "startingHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    move/from16 v47, v0

    if-eqz v47, :cond_1

    .line 1539
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1540
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    .line 1543
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x8

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_b

    const/16 v26, 0x1

    .line 1545
    .local v26, "optimiseDimensions":Z
    :goto_7
    if-eqz v26, :cond_c

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->preOptimize()V

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v37

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeForDimensions(II)V

    .line 1548
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureDimensions(II)V

    .line 1552
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updatePostMeasures()V

    .line 1561
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v47

    if-lez v47, :cond_2

    .line 1562
    const-string v47, "First pass"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1564
    :cond_2
    const/4 v10, 0x0

    .line 1567
    .local v10, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v35

    .line 1569
    .local v35, "sizeDependentWidgetsCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v47

    add-int v17, v28, v47

    .line 1570
    .local v17, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v47

    add-int v44, v27, v47

    .line 1576
    .local v44, "widthPadding":I
    if-lez v35, :cond_24

    .line 1577
    const/16 v25, 0x0

    .line 1578
    .local v25, "needSolverPass":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v47

    sget-object v48, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_d

    const/4 v12, 0x1

    .line 1580
    .local v12, "containerWrapWidth":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v47

    sget-object v48, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_e

    const/4 v11, 0x1

    .line 1582
    .local v11, "containerWrapHeight":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v47

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1583
    .local v24, "minWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v47

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 1584
    .local v23, "minHeight":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_b
    move/from16 v0, v20

    move/from16 v1, v35

    if-ge v0, v1, :cond_1b

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1586
    .local v42, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1587
    .local v9, "child":Landroid/view/View;
    if-nez v9, :cond_f

    .line 1584
    :cond_3
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 1501
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "childState":I
    .end local v11    # "containerWrapHeight":Z
    .end local v12    # "containerWrapWidth":Z
    .end local v13    # "fitSizeHeight":Z
    .end local v14    # "fitSizeWidth":Z
    .end local v17    # "heightPadding":I
    .end local v20    # "i":I
    .end local v23    # "minHeight":I
    .end local v24    # "minWidth":I
    .end local v25    # "needSolverPass":Z
    .end local v26    # "optimiseDimensions":Z
    .end local v27    # "paddingLeft":I
    .end local v28    # "paddingTop":I
    .end local v32    # "sameMeasure":Z
    .end local v33    # "sameMode":Z
    .end local v34    # "sameSize":Z
    .end local v35    # "sizeDependentWidgetsCount":I
    .end local v36    # "startingHeight":I
    .end local v37    # "startingWidth":I
    .end local v40    # "validLastMeasure":Z
    .end local v42    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v44    # "widthPadding":I
    :cond_4
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 1502
    .restart local v40    # "validLastMeasure":Z
    :cond_5
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 1504
    .restart local v34    # "sameSize":Z
    :cond_6
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 1505
    .restart local v33    # "sameMode":Z
    :cond_7
    const/16 v32, 0x0

    goto/16 :goto_3

    .line 1507
    .restart local v32    # "sameMeasure":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1510
    .restart local v14    # "fitSizeWidth":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 1532
    .restart local v13    # "fitSizeHeight":Z
    .restart local v27    # "paddingLeft":I
    .restart local v28    # "paddingTop":I
    :cond_a
    const/16 v47, 0x0

    goto/16 :goto_6

    .line 1543
    .restart local v36    # "startingHeight":I
    .restart local v37    # "startingWidth":I
    :cond_b
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 1550
    .restart local v26    # "optimiseDimensions":Z
    :cond_c
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureChildren(II)V

    goto/16 :goto_8

    .line 1578
    .restart local v10    # "childState":I
    .restart local v17    # "heightPadding":I
    .restart local v25    # "needSolverPass":Z
    .restart local v35    # "sizeDependentWidgetsCount":I
    .restart local v44    # "widthPadding":I
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 1580
    .restart local v12    # "containerWrapWidth":Z
    :cond_e
    const/4 v11, 0x0

    goto :goto_a

    .line 1590
    .restart local v9    # "child":Landroid/view/View;
    .restart local v11    # "containerWrapHeight":Z
    .restart local v20    # "i":I
    .restart local v23    # "minHeight":I
    .restart local v24    # "minWidth":I
    .restart local v42    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_f
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1591
    .local v29, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    move/from16 v47, v0

    if-nez v47, :cond_3

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v47, v0

    if-nez v47, :cond_3

    .line 1594
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_3

    .line 1598
    if-eqz v26, :cond_10

    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v47

    if-eqz v47, :cond_10

    .line 1599
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v47

    if-nez v47, :cond_3

    .line 1602
    :cond_10
    const/16 v46, 0x0

    .line 1603
    .local v46, "widthSpec":I
    const/16 v19, 0x0

    .line 1605
    .local v19, "heightSpec":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v47, v0

    const/16 v48, -0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_19

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v47, v0

    if-eqz v47, :cond_19

    .line 1606
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v47, v0

    move/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v46

    .line 1610
    :goto_d
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v47, v0

    const/16 v48, -0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v47, v0

    if-eqz v47, :cond_1a

    .line 1611
    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v47, v0

    move/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v19

    .line 1617
    :goto_e
    move/from16 v0, v46

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v47, v0

    if-eqz v47, :cond_11

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    move-wide/from16 v48, v0

    const-wide/16 v50, 0x1

    add-long v48, v48, v50

    move-wide/from16 v0, v48

    move-object/from16 v2, v47

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    .line 1622
    :cond_11
    add-int/lit8 v4, v4, 0x1

    .line 1624
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    .line 1625
    .local v22, "measuredWidth":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 1627
    .local v21, "measuredHeight":I
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v47

    move/from16 v0, v22

    move/from16 v1, v47

    if-eq v0, v1, :cond_14

    .line 1628
    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1629
    if-eqz v26, :cond_12

    .line 1630
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1632
    :cond_12
    if-eqz v12, :cond_13

    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v47

    move/from16 v0, v47

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    .line 1633
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v47

    sget-object v48, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1634
    move-object/from16 v0, v42

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v48

    add-int v41, v47, v48

    .line 1635
    .local v41, "w":I
    move/from16 v0, v24

    move/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 1637
    .end local v41    # "w":I
    :cond_13
    const/16 v25, 0x1

    .line 1639
    :cond_14
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v47

    move/from16 v0, v21

    move/from16 v1, v47

    if-eq v0, v1, :cond_17

    .line 1640
    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1641
    if-eqz v26, :cond_15

    .line 1642
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1644
    :cond_15
    if-eqz v11, :cond_16

    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v47

    move/from16 v0, v47

    move/from16 v1, v23

    if-le v0, v1, :cond_16

    .line 1645
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v47

    sget-object v48, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1646
    move-object/from16 v0, v42

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v48

    add-int v15, v47, v48

    .line 1647
    .local v15, "h":I
    move/from16 v0, v23

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 1649
    .end local v15    # "h":I
    :cond_16
    const/16 v25, 0x1

    .line 1651
    :cond_17
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v47, v0

    if-eqz v47, :cond_18

    .line 1652
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v8

    .line 1653
    .local v8, "baseline":I
    const/16 v47, -0x1

    move/from16 v0, v47

    if-eq v8, v0, :cond_18

    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v47

    move/from16 v0, v47

    if-eq v8, v0, :cond_18

    .line 1654
    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1655
    const/16 v25, 0x1

    .line 1659
    .end local v8    # "baseline":I
    :cond_18
    sget v47, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v48, 0xb

    move/from16 v0, v47

    move/from16 v1, v48

    if-lt v0, v1, :cond_3

    .line 1660
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v47

    move/from16 v0, v47

    invoke-static {v10, v0}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v10

    goto/16 :goto_c

    .line 1608
    .end local v21    # "measuredHeight":I
    .end local v22    # "measuredWidth":I
    :cond_19
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v47

    const/high16 v48, 0x40000000    # 2.0f

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    goto/16 :goto_d

    .line 1613
    :cond_1a
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v47

    const/high16 v48, 0x40000000    # 2.0f

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    goto/16 :goto_e

    .line 1663
    .end local v9    # "child":Landroid/view/View;
    .end local v19    # "heightSpec":I
    .end local v29    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v42    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v46    # "widthSpec":I
    :cond_1b
    if-eqz v25, :cond_1f

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1666
    if-eqz v26, :cond_1c

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1669
    :cond_1c
    const-string v47, "2nd pass"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1670
    const/16 v25, 0x0

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v47

    move/from16 v0, v47

    move/from16 v1, v24

    if-ge v0, v1, :cond_1d

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1673
    const/16 v25, 0x1

    .line 1675
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v47

    move/from16 v0, v47

    move/from16 v1, v23

    if-ge v0, v1, :cond_1e

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1677
    const/16 v25, 0x1

    .line 1679
    :cond_1e
    if-eqz v25, :cond_1f

    .line 1680
    const-string v47, "3rd pass"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1683
    :cond_1f
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    move/from16 v1, v35

    if-ge v0, v1, :cond_24

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1685
    .restart local v42    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1686
    .restart local v9    # "child":Landroid/view/View;
    if-nez v9, :cond_21

    .line 1683
    :cond_20
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 1689
    :cond_21
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v47

    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_22

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v47

    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_20

    .line 1690
    :cond_22
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v47

    const/high16 v48, 0x40000000    # 2.0f

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    .line 1691
    .restart local v46    # "widthSpec":I
    invoke-virtual/range {v42 .. v42}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v47

    const/high16 v48, 0x40000000    # 2.0f

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 1692
    .restart local v19    # "heightSpec":I
    move/from16 v0, v46

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v47, v0

    if-eqz v47, :cond_23

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    move-wide/from16 v48, v0

    const-wide/16 v50, 0x1

    add-long v48, v48, v50

    move-wide/from16 v0, v48

    move-object/from16 v2, v47

    iput-wide v0, v2, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    .line 1697
    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1702
    .end local v9    # "child":Landroid/view/View;
    .end local v11    # "containerWrapHeight":Z
    .end local v12    # "containerWrapWidth":Z
    .end local v19    # "heightSpec":I
    .end local v20    # "i":I
    .end local v23    # "minHeight":I
    .end local v24    # "minWidth":I
    .end local v25    # "needSolverPass":Z
    .end local v42    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v46    # "widthSpec":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v47

    add-int v7, v47, v44

    .line 1703
    .local v7, "androidLayoutWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v47

    add-int v6, v47, v17

    .line 1705
    .local v6, "androidLayoutHeight":I
    sget v47, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v48, 0xb

    move/from16 v0, v47

    move/from16 v1, v48

    if-lt v0, v1, :cond_27

    .line 1706
    move/from16 v0, p1

    invoke-static {v7, v0, v10}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v31

    .line 1707
    .local v31, "resolvedWidthSize":I
    shl-int/lit8 v47, v10, 0x10

    move/from16 v0, p2

    move/from16 v1, v47

    invoke-static {v6, v0, v1}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v30

    .line 1709
    .local v30, "resolvedHeightSize":I
    const v47, 0xffffff

    and-int v31, v31, v47

    .line 1710
    const v47, 0xffffff

    and-int v30, v30, v47

    .line 1711
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    move/from16 v47, v0

    move/from16 v0, v47

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 1712
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    move/from16 v47, v0

    move/from16 v0, v47

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v47

    if-eqz v47, :cond_25

    .line 1714
    const/high16 v47, 0x1000000

    or-int v31, v31, v47

    .line 1716
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v47

    if-eqz v47, :cond_26

    .line 1717
    const/high16 v47, 0x1000000

    or-int v30, v30, v47

    .line 1719
    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1720
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1721
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 1735
    .end local v30    # "resolvedHeightSize":I
    .end local v31    # "resolvedWidthSize":I
    :goto_11
    return-void

    .line 1723
    :cond_27
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1724
    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1725
    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    goto :goto_11
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 646
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 647
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 649
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 650
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v3, p1, Landroid/support/constraint/Guideline;

    if-eqz v3, :cond_1

    .line 651
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v3, :cond_1

    .line 652
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 653
    .local v1, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    new-instance v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 654
    iput-boolean v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 655
    iget-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 658
    .end local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_1
    instance-of v3, p1, Landroid/support/constraint/ConstraintHelper;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 659
    check-cast v0, Landroid/support/constraint/ConstraintHelper;

    .line 660
    .local v0, "helper":Landroid/support/constraint/ConstraintHelper;
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintHelper;->validateParams()V

    .line 661
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 662
    .restart local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iput-boolean v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 663
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 664
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    .end local v0    # "helper":Landroid/support/constraint/ConstraintHelper;
    .end local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_2
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 668
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 669
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 676
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 677
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 679
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 680
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 681
    .local v0, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 682
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 683
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 684
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 685
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 635
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 636
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 637
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 639
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 3112
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3115
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 3116
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 3117
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 3118
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 3119
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 3120
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 3121
    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/ConstraintSet;)V
    .locals 0
    .param p1, "set"    # Landroid/support/constraint/ConstraintSet;

    .prologue
    .line 1944
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 1945
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "value2"    # Ljava/lang/Object;

    .prologue
    .line 532
    if-nez p1, :cond_2

    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_2

    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 533
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 534
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    :cond_0
    move-object v2, p2

    .line 536
    check-cast v2, Ljava/lang/String;

    .line 537
    .local v2, "name":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 538
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 539
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 541
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value2":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 542
    .local v0, "id":I
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .end local v0    # "id":I
    .end local v1    # "index":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 579
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 580
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 581
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 582
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 752
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 756
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 739
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 743
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 706
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 710
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 693
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    .line 698
    :goto_0
    return-void

    .line 696
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 697
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    goto :goto_0
.end method

.method public setOptimizationLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1895
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 1896
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 3129
    const/4 v0, 0x0

    return v0
.end method

.method protected solveLinearSystem(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1800
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 1801
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v2, v0, Landroid/support/constraint/solver/Metrics;->resolutions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/solver/Metrics;->resolutions:J

    .line 1804
    :cond_0
    return-void
.end method
