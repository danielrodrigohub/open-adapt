.class public final Lv2/u;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Lv2/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/u$a;,
        Lv2/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv2/n<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lv2/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/u<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv2/u;

    invoke-direct {v0}, Lv2/u;-><init>()V

    sput-object v0, Lv2/u;->a:Lv2/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILp2/h;)Lv2/n$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lp2/h;",
            ")",
            "Lv2/n$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p2, Lv2/n$a;

    new-instance p3, Lk3/d;

    invoke-direct {p3, p1}, Lk3/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lv2/u$b;

    invoke-direct {p4, p1}, Lv2/u$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lv2/n$a;-><init>(Lp2/f;Lcom/bumptech/glide/load/data/d;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
