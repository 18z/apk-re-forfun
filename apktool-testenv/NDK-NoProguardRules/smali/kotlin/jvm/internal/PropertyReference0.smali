.class public abstract Lkotlin/jvm/internal/PropertyReference0;
.super Lkotlin/jvm/internal/PropertyReference;
.source "PropertyReference0.java"

# interfaces
.implements Lkotlin/reflect/KProperty0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lkotlin/jvm/internal/PropertyReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected computeReflected()Lkotlin/reflect/KCallable;
    .locals 0

    .line 35
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object p0

    return-object p0
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .line 51
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference0;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KProperty0;

    invoke-interface {p0}, Lkotlin/reflect/KProperty0;->getDelegate()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty$Getter;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference0;->getGetter()Lkotlin/reflect/KProperty0$Getter;

    move-result-object p0

    return-object p0
.end method

.method public getGetter()Lkotlin/reflect/KProperty0$Getter;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference0;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KProperty0;

    invoke-interface {p0}, Lkotlin/reflect/KProperty0;->getGetter()Lkotlin/reflect/KProperty0$Getter;

    move-result-object p0

    return-object p0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference0;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
