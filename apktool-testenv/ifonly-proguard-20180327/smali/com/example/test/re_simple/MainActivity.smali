.class public Lcom/example/test/re_simple/MainActivity;
.super Landroid/support/v7/app/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 2

    const-string v0, "pprint"

    const-string v1, "proguard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/example/test/re_simple/MainActivity;->setContentView(I)V

    const-string v0, "tag"

    const-string v1, "ifONLY"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/example/test/re_simple/MainActivity;->k()V

    return-void
.end method
