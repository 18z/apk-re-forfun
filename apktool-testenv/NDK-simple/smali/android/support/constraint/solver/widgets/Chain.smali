.class Landroid/support/constraint/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 6
    .param p0, "constraintWidgetContainer"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I

    .prologue
    .line 44
    const/4 v4, 0x0

    .line 45
    .local v4, "offset":I
    const/4 v1, 0x0

    .line 46
    .local v1, "chainsSize":I
    const/4 v0, 0x0

    .line 47
    .local v0, "chainsArray":[Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez p2, :cond_1

    .line 48
    const/4 v4, 0x0

    .line 49
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 50
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 56
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 57
    aget-object v2, v0, v3

    .line 58
    .local v2, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    invoke-static {p0, p1, p2, v4, v2}, Landroid/support/constraint/solver/widgets/Optimizer;->applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    invoke-static {p0, p1, p2, v4, v2}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 56
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 52
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v3    # "i":I
    :cond_1
    const/4 v4, 0x2

    .line 53
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 54
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_0

    .line 63
    .restart local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "i":I
    :cond_2
    invoke-static {p0, p1, p2, v4, v2}, Landroid/support/constraint/solver/widgets/Chain;->applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_2

    .line 66
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3
    return-void
.end method

.method static applyChainConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 67
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "first"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .prologue
    .line 80
    move-object/from16 v66, p4

    .line 81
    .local v66, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v59, 0x0

    .line 82
    .local v59, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v50, 0x0

    .line 83
    .local v50, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v57, 0x0

    .line 84
    .local v57, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v48, 0x0

    .line 85
    .local v48, "done":Z
    const/16 v62, 0x0

    .line 86
    .local v62, "numMatchConstraints":I
    const/4 v5, 0x0

    .line 87
    .local v5, "totalWeights":F
    const/16 v49, 0x0

    .line 88
    .local v49, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/16 v63, 0x0

    .line 90
    .local v63, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v11, p2

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_2

    const/16 v55, 0x1

    .line 91
    .local v55, "isWrapContent":Z
    :goto_0
    const/16 v53, 0x0

    .line 92
    .local v53, "isChainSpread":Z
    const/16 v54, 0x0

    .line 93
    .local v54, "isChainSpreadInside":Z
    const/16 v52, 0x0

    .line 95
    .local v52, "isChainPacked":Z
    move-object/from16 v51, p4

    .line 96
    .local v51, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez p2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 98
    :goto_1
    if-nez v48, :cond_5

    .line 100
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v60, v0

    .line 101
    .local v60, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v60, :cond_3

    .line 102
    move-object/from16 v0, v60

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v59, v0

    .line 103
    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_0

    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v0, v66

    if-eq v11, v0, :cond_1

    .line 105
    :cond_0
    const/16 v59, 0x0

    .line 110
    :cond_1
    :goto_2
    if-eqz v59, :cond_4

    .line 111
    move-object/from16 v66, v59

    goto :goto_1

    .line 90
    .end local v51    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v52    # "isChainPacked":Z
    .end local v53    # "isChainSpread":Z
    .end local v54    # "isChainSpreadInside":Z
    .end local v55    # "isWrapContent":Z
    .end local v60    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_2
    const/16 v55, 0x0

    goto :goto_0

    .line 108
    .restart local v51    # "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v52    # "isChainPacked":Z
    .restart local v53    # "isChainSpread":Z
    .restart local v54    # "isChainSpreadInside":Z
    .restart local v55    # "isWrapContent":Z
    .restart local v60    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_3
    const/16 v59, 0x0

    goto :goto_2

    .line 113
    :cond_4
    const/16 v48, 0x1

    goto :goto_1

    .line 116
    .end local v60    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_5
    move-object/from16 v51, v66

    .line 117
    move-object/from16 v66, p4

    .line 118
    const/16 v59, 0x0

    .line 119
    const/16 v48, 0x0

    .line 122
    :cond_6
    if-nez p2, :cond_13

    .line 123
    move-object/from16 v0, v51

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v11, :cond_10

    const/16 v53, 0x1

    .line 124
    :goto_3
    move-object/from16 v0, v51

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    const/16 v54, 0x1

    .line 125
    :goto_4
    move-object/from16 v0, v51

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_12

    const/16 v52, 0x1

    .line 137
    :goto_5
    if-nez v48, :cond_1b

    .line 141
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v12, 0x0

    aput-object v12, v11, p2

    .line 142
    invoke-virtual/range {v66 .. v66}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_9

    .line 143
    if-eqz v57, :cond_7

    .line 144
    move-object/from16 v0, v57

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v66, v11, p2

    .line 146
    :cond_7
    if-nez v50, :cond_8

    .line 147
    move-object/from16 v50, v66

    .line 149
    :cond_8
    move-object/from16 v57, v66

    .line 152
    :cond_9
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 153
    .local v7, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v65, 0x1

    .line 154
    .local v65, "strength":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v58

    .line 156
    .local v58, "margin":I
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_a

    move-object/from16 v0, v66

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_a

    invoke-virtual/range {v66 .. v66}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_a

    .line 157
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int v58, v58, v11

    .line 160
    :cond_a
    if-eqz v52, :cond_b

    move-object/from16 v0, v66

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_b

    move-object/from16 v0, v66

    move-object/from16 v1, v50

    if-eq v0, v1, :cond_b

    .line 161
    const/16 v65, 0x6

    .line 164
    :cond_b
    move-object/from16 v0, v66

    move-object/from16 v1, v50

    if-ne v0, v1, :cond_17

    .line 165
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v17, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v58

    move/from16 v2, v17

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 171
    :goto_6
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, p1

    move/from16 v1, v58

    move/from16 v2, v65

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 174
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v12, 0x0

    aput-object v12, v11, p2

    .line 175
    invoke-virtual/range {v66 .. v66}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_c

    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v11, p2

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_c

    .line 177
    add-int/lit8 v62, v62, 0x1

    .line 178
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v11, v11, p2

    add-float/2addr v5, v11

    .line 179
    if-nez v49, :cond_18

    .line 180
    move-object/from16 v49, v66

    .line 184
    :goto_7
    move-object/from16 v63, v66

    .line 185
    if-eqz v55, :cond_c

    .line 186
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, v66

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v17, 0x0

    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 191
    :cond_c
    if-eqz v55, :cond_d

    .line 192
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v17, 0x0

    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 198
    :cond_d
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v60, v0

    .line 199
    .restart local v60    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v60, :cond_19

    .line 200
    move-object/from16 v0, v60

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v59, v0

    .line 201
    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_e

    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v0, v66

    if-eq v11, v0, :cond_f

    .line 202
    :cond_e
    const/16 v59, 0x0

    .line 207
    :cond_f
    :goto_8
    if-eqz v59, :cond_1a

    .line 208
    move-object/from16 v66, v59

    goto/16 :goto_5

    .line 123
    .end local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v58    # "margin":I
    .end local v60    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v65    # "strength":I
    :cond_10
    const/16 v53, 0x0

    goto/16 :goto_3

    .line 124
    :cond_11
    const/16 v54, 0x0

    goto/16 :goto_4

    .line 125
    :cond_12
    const/16 v52, 0x0

    goto/16 :goto_5

    .line 127
    :cond_13
    move-object/from16 v0, v51

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v11, :cond_14

    const/16 v53, 0x1

    .line 128
    :goto_9
    move-object/from16 v0, v51

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_15

    const/16 v54, 0x1

    .line 129
    :goto_a
    move-object/from16 v0, v51

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_16

    const/16 v52, 0x1

    :goto_b
    goto/16 :goto_5

    .line 127
    :cond_14
    const/16 v53, 0x0

    goto :goto_9

    .line 128
    :cond_15
    const/16 v54, 0x0

    goto :goto_a

    .line 129
    :cond_16
    const/16 v52, 0x0

    goto :goto_b

    .line 168
    .restart local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v58    # "margin":I
    .restart local v65    # "strength":I
    :cond_17
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/16 v17, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v58

    move/from16 v2, v17

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_6

    .line 182
    :cond_18
    move-object/from16 v0, v63

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v66, v11, p2

    goto/16 :goto_7

    .line 205
    .restart local v60    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_19
    const/16 v59, 0x0

    goto :goto_8

    .line 210
    :cond_1a
    const/16 v48, 0x1

    goto/16 :goto_5

    .line 213
    .end local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v58    # "margin":I
    .end local v60    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v65    # "strength":I
    :cond_1b
    move-object/from16 v56, v66

    .line 216
    .local v56, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v57, :cond_1c

    move-object/from16 v0, v56

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_1c

    .line 217
    move-object/from16 v0, v57

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 218
    .local v8, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, v56

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v17, p3, 0x1

    aget-object v12, v12, v17

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 219
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    const/16 v19, 0x5

    .line 218
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 224
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_1c
    if-eqz v55, :cond_1d

    .line 225
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, v56

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v17, p3, 0x1

    aget-object v12, v12, v17

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v17, v0

    add-int/lit8 v19, p3, 0x1

    aget-object v17, v17, v19

    .line 227
    invoke-virtual/range {v17 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    const/16 v19, 0x6

    .line 225
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 231
    :cond_1d
    if-lez v62, :cond_23

    .line 232
    move-object/from16 v66, v49

    .line 233
    :goto_c
    if-eqz v66, :cond_23

    .line 234
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v59, v11, p2

    .line 235
    if-eqz v59, :cond_20

    .line 236
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v4, v11, p2

    .line 237
    .local v4, "currentWeight":F
    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v6, v11, p2

    .line 238
    .local v6, "nextWeight":F
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v7, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 239
    .local v7, "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v8, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 240
    .local v8, "end":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v9, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 241
    .local v9, "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v10, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 246
    .local v10, "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    if-nez p2, :cond_21

    .line 247
    move-object/from16 v0, v66

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v47, v0

    .line 248
    .local v47, "currentDimensionDefault":I
    move-object/from16 v0, v59

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v61, v0

    .line 253
    .local v61, "nextDimensionDefault":I
    :goto_d
    if-eqz v47, :cond_1e

    const/4 v11, 0x3

    move/from16 v0, v47

    if-ne v0, v11, :cond_22

    :cond_1e
    if-eqz v61, :cond_1f

    const/4 v11, 0x3

    move/from16 v0, v61

    if-ne v0, v11, :cond_22

    :cond_1f
    const/16 v44, 0x1

    .line 258
    .local v44, "applyEquality":Z
    :goto_e
    if-eqz v44, :cond_20

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v3

    .line 260
    .local v3, "row":Landroid/support/constraint/solver/ArrayRow;
    invoke-virtual/range {v3 .. v10}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    .line 262
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 266
    .end local v3    # "row":Landroid/support/constraint/solver/ArrayRow;
    .end local v4    # "currentWeight":F
    .end local v6    # "nextWeight":F
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v9    # "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    .end local v10    # "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    .end local v44    # "applyEquality":Z
    .end local v47    # "currentDimensionDefault":I
    .end local v61    # "nextDimensionDefault":I
    :cond_20
    move-object/from16 v66, v59

    goto :goto_c

    .line 250
    .restart local v4    # "currentWeight":F
    .restart local v6    # "nextWeight":F
    .restart local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v8    # "end":Landroid/support/constraint/solver/SolverVariable;
    .restart local v9    # "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v10    # "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    :cond_21
    move-object/from16 v0, v66

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v47, v0

    .line 251
    .restart local v47    # "currentDimensionDefault":I
    move-object/from16 v0, v59

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v61, v0

    .restart local v61    # "nextDimensionDefault":I
    goto :goto_d

    .line 253
    :cond_22
    const/16 v44, 0x0

    goto :goto_e

    .line 282
    .end local v4    # "currentWeight":F
    .end local v6    # "nextWeight":F
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v8    # "end":Landroid/support/constraint/solver/SolverVariable;
    .end local v9    # "nextBegin":Landroid/support/constraint/solver/SolverVariable;
    .end local v10    # "nextEnd":Landroid/support/constraint/solver/SolverVariable;
    .end local v47    # "currentDimensionDefault":I
    .end local v61    # "nextDimensionDefault":I
    :cond_23
    if-eqz v50, :cond_2f

    move-object/from16 v0, v50

    move-object/from16 v1, v57

    if-eq v0, v1, :cond_24

    if-eqz v52, :cond_2f

    .line 283
    :cond_24
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 284
    .local v7, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v56

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 285
    .local v8, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_2c

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 286
    .local v13, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_f
    move-object/from16 v0, v56

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_2d

    move-object/from16 v0, v56

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v16, v0

    .line 287
    .local v16, "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_10
    move-object/from16 v0, v50

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_25

    .line 288
    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 289
    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 291
    :cond_25
    if-eqz v13, :cond_27

    if-eqz v16, :cond_27

    .line 292
    const/high16 v15, 0x3f000000    # 0.5f

    .line 293
    .local v15, "bias":F
    if-nez p2, :cond_2e

    .line 294
    move-object/from16 v0, v51

    iget v15, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 298
    :goto_11
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 299
    .local v14, "beginMargin":I
    if-nez v57, :cond_26

    .line 301
    move-object/from16 v57, v56

    .line 303
    :cond_26
    move-object/from16 v0, v57

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v18

    .line 304
    .local v18, "endMargin":I
    iget-object v12, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v17, v0

    const/16 v19, 0x5

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v19}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 430
    .end local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v15    # "bias":F
    .end local v16    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v18    # "endMargin":I
    :cond_27
    :goto_12
    if-nez v53, :cond_28

    if-eqz v54, :cond_2b

    :cond_28
    if-eqz v50, :cond_2b

    .line 431
    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 432
    .restart local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v57

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 433
    .restart local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_49

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 434
    .restart local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_13
    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_4a

    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v16, v0

    .line 435
    .restart local v16    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_14
    move-object/from16 v0, v50

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_29

    .line 436
    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 437
    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 439
    :cond_29
    if-eqz v13, :cond_2b

    if-eqz v16, :cond_2b

    .line 440
    const/high16 v15, 0x3f000000    # 0.5f

    .line 441
    .restart local v15    # "bias":F
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 442
    .restart local v14    # "beginMargin":I
    if-nez v57, :cond_2a

    .line 444
    move-object/from16 v57, v56

    .line 446
    :cond_2a
    move-object/from16 v0, v57

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v18

    .line 447
    .restart local v18    # "endMargin":I
    iget-object v12, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v17, v0

    const/16 v19, 0x5

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v19}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 451
    .end local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v15    # "bias":F
    .end local v16    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v18    # "endMargin":I
    :cond_2b
    return-void

    .line 285
    .restart local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_2c
    const/4 v13, 0x0

    goto/16 :goto_f

    .line 286
    .restart local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_2d
    const/16 v16, 0x0

    goto/16 :goto_10

    .line 296
    .restart local v15    # "bias":F
    .restart local v16    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_2e
    move-object/from16 v0, v51

    iget v15, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto/16 :goto_11

    .line 307
    .end local v7    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v15    # "bias":F
    .end local v16    # "endTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_2f
    if-eqz v53, :cond_3d

    if-eqz v50, :cond_3d

    .line 309
    move-object/from16 v66, v50

    .line 310
    move-object/from16 v64, v50

    .line 311
    .local v64, "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_15
    if-eqz v66, :cond_27

    .line 312
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v59, v11, p2

    .line 313
    if-nez v59, :cond_30

    move-object/from16 v0, v66

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_36

    .line 314
    :cond_30
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v45, v11, p3

    .line 315
    .local v45, "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v45

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 316
    .local v7, "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v45

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_37

    move-object/from16 v0, v45

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 317
    .restart local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_16
    move-object/from16 v0, v64

    move-object/from16 v1, v66

    if-eq v0, v1, :cond_38

    .line 318
    move-object/from16 v0, v64

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 323
    :cond_31
    :goto_17
    const/16 v46, 0x0

    .line 324
    .local v46, "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v24, 0x0

    .line 325
    .local v24, "beginNext":Landroid/support/constraint/solver/SolverVariable;
    const/16 v25, 0x0

    .line 326
    .local v25, "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {v45 .. v45}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 327
    .restart local v14    # "beginMargin":I
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    .line 329
    .local v34, "nextMargin":I
    if-eqz v59, :cond_3b

    .line 330
    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v46, v11, p3

    .line 331
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v24, v0

    .line 332
    move-object/from16 v0, v46

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_3a

    move-object/from16 v0, v46

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v25, v0

    .line 341
    :goto_18
    if-eqz v46, :cond_32

    .line 342
    invoke-virtual/range {v46 .. v46}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int v34, v34, v11

    .line 344
    :cond_32
    if-eqz v64, :cond_33

    .line 345
    move-object/from16 v0, v64

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v14, v11

    .line 347
    :cond_33
    if-eqz v7, :cond_36

    if-eqz v13, :cond_36

    if-eqz v24, :cond_36

    if-eqz v25, :cond_36

    .line 348
    move/from16 v22, v14

    .line 349
    .local v22, "margin1":I
    move-object/from16 v0, v66

    move-object/from16 v1, v50

    if-ne v0, v1, :cond_34

    .line 350
    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v22

    .line 352
    :cond_34
    move/from16 v26, v34

    .line 353
    .local v26, "margin2":I
    move-object/from16 v0, v66

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_35

    .line 354
    move-object/from16 v0, v57

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v26

    .line 356
    :cond_35
    const/high16 v23, 0x3f000000    # 0.5f

    const/16 v27, 0x4

    move-object/from16 v19, p1

    move-object/from16 v20, v7

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 361
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v22    # "margin1":I
    .end local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v26    # "margin2":I
    .end local v34    # "nextMargin":I
    .end local v45    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v46    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_36
    move-object/from16 v64, v66

    .line 362
    move-object/from16 v66, v59

    goto/16 :goto_15

    .line 316
    .restart local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v45    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_37
    const/4 v13, 0x0

    goto/16 :goto_16

    .line 319
    .restart local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_38
    move-object/from16 v0, v66

    move-object/from16 v1, v50

    if-ne v0, v1, :cond_31

    move-object/from16 v0, v64

    move-object/from16 v1, v66

    if-ne v0, v1, :cond_31

    .line 320
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_39

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    :goto_19
    goto/16 :goto_17

    :cond_39
    const/4 v13, 0x0

    goto :goto_19

    .line 332
    .restart local v14    # "beginMargin":I
    .restart local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v34    # "nextMargin":I
    .restart local v46    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_3a
    const/16 v25, 0x0

    goto/16 :goto_18

    .line 334
    :cond_3b
    move-object/from16 v0, v56

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v46, v0

    .line 335
    if-eqz v46, :cond_3c

    .line 336
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v24, v0

    .line 338
    :cond_3c
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v25, v0

    goto/16 :goto_18

    .line 364
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v34    # "nextMargin":I
    .end local v45    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v46    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v64    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3d
    if-eqz v54, :cond_27

    if-eqz v50, :cond_27

    .line 366
    move-object/from16 v66, v50

    .line 367
    move-object/from16 v64, v50

    .line 368
    .restart local v64    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_1a
    if-eqz v66, :cond_46

    .line 369
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v59, v11, p2

    .line 370
    move-object/from16 v0, v66

    move-object/from16 v1, v50

    if-eq v0, v1, :cond_41

    move-object/from16 v0, v66

    move-object/from16 v1, v57

    if-eq v0, v1, :cond_41

    if-eqz v59, :cond_41

    .line 371
    move-object/from16 v0, v59

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_3e

    .line 372
    const/16 v59, 0x0

    .line 374
    :cond_3e
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v45, v11, p3

    .line 375
    .restart local v45    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v45

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 376
    .restart local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    move-object/from16 v0, v45

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_42

    move-object/from16 v0, v45

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 377
    .restart local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :goto_1b
    move-object/from16 v0, v64

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 378
    const/16 v46, 0x0

    .line 379
    .restart local v46    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v24, 0x0

    .line 380
    .restart local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    const/16 v25, 0x0

    .line 381
    .restart local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual/range {v45 .. v45}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 382
    .restart local v14    # "beginMargin":I
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v34

    .line 384
    .restart local v34    # "nextMargin":I
    if-eqz v59, :cond_44

    .line 385
    move-object/from16 v0, v59

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v46, v11, p3

    .line 386
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v24, v0

    .line 387
    move-object/from16 v0, v46

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_43

    move-object/from16 v0, v46

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v25, v0

    .line 396
    :goto_1c
    if-eqz v46, :cond_3f

    .line 397
    invoke-virtual/range {v46 .. v46}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int v34, v34, v11

    .line 399
    :cond_3f
    if-eqz v64, :cond_40

    .line 400
    move-object/from16 v0, v64

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v14, v11

    .line 402
    :cond_40
    if-eqz v7, :cond_41

    if-eqz v13, :cond_41

    if-eqz v24, :cond_41

    if-eqz v25, :cond_41

    .line 403
    const/high16 v31, 0x3f000000    # 0.5f

    const/16 v35, 0x4

    move-object/from16 v27, p1

    move-object/from16 v28, v7

    move-object/from16 v29, v13

    move/from16 v30, v14

    move-object/from16 v32, v24

    move-object/from16 v33, v25

    invoke-virtual/range {v27 .. v35}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 408
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v34    # "nextMargin":I
    .end local v45    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v46    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_41
    move-object/from16 v64, v66

    .line 409
    move-object/from16 v66, v59

    goto/16 :goto_1a

    .line 376
    .restart local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .restart local v45    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_42
    const/4 v13, 0x0

    goto :goto_1b

    .line 387
    .restart local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v14    # "beginMargin":I
    .restart local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .restart local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .restart local v34    # "nextMargin":I
    .restart local v46    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_43
    const/16 v25, 0x0

    goto :goto_1c

    .line 389
    :cond_44
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v46, v0

    .line 390
    if-eqz v46, :cond_45

    .line 391
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v24, v0

    .line 393
    :cond_45
    move-object/from16 v0, v66

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v25, v0

    goto :goto_1c

    .line 411
    .end local v7    # "begin":Landroid/support/constraint/solver/SolverVariable;
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v14    # "beginMargin":I
    .end local v24    # "beginNext":Landroid/support/constraint/solver/SolverVariable;
    .end local v25    # "beginNextTarget":Landroid/support/constraint/solver/SolverVariable;
    .end local v34    # "nextMargin":I
    .end local v45    # "beginAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v46    # "beginNextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    :cond_46
    move-object/from16 v0, v50

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v11, p3

    .line 412
    .local v7, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    iget-object v13, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 413
    .local v13, "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v57

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v11, v12

    .line 414
    .restart local v8    # "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move-object/from16 v0, v56

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v11, v11, v12

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    .line 415
    .local v16, "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v13, :cond_47

    .line 416
    move-object/from16 v0, v50

    move-object/from16 v1, v57

    if-eq v0, v1, :cond_48

    .line 417
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v12, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 423
    :cond_47
    :goto_1d
    if-eqz v16, :cond_27

    move-object/from16 v0, v50

    move-object/from16 v1, v57

    if-eq v0, v1, :cond_27

    .line 424
    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v0, v16

    iget-object v12, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_12

    .line 418
    :cond_48
    if-eqz v16, :cond_47

    .line 419
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v36, v0

    iget-object v0, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v37, v0

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v38

    const/high16 v39, 0x3f000000    # 0.5f

    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v40, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v41, v0

    .line 420
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v42

    const/16 v43, 0x5

    move-object/from16 v35, p1

    .line 419
    invoke-virtual/range {v35 .. v43}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_1d

    .line 433
    .end local v13    # "beginTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v16    # "endTarget":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v64    # "previousVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_49
    const/4 v13, 0x0

    goto/16 :goto_13

    .line 434
    .local v13, "beginTarget":Landroid/support/constraint/solver/SolverVariable;
    :cond_4a
    const/16 v16, 0x0

    goto/16 :goto_14
.end method
