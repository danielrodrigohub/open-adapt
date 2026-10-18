.class public final Lv2/u$a;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Lv2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv2/o<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lv2/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/u$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv2/u$a;

    invoke-direct {v0}, Lv2/u$a;-><init>()V

    sput-object v0, Lv2/u$a;->a:Lv2/u$a;

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
.method public final b(Lv2/r;)Lv2/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/r;",
            ")",
            "Lv2/n<",
            "TModel;TModel;>;"
        }
    .end annotation

    sget-object p1, Lv2/u;->a:Lv2/u;

    return-object p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
