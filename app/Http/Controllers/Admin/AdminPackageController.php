<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Package;

class AdminPackageController extends Controller
{
    public function index()
    {
        $pageTitle = "Package List | Petlodger";
        $packages = Package::orderBy('created_at', 'desc')->paginate(8);
        return view('admin.package.index', compact('packages', 'pageTitle'));
    }
    public function create()
    {
        $pageTitle = "Create New Service | Petlodger";
        return view('admin.package.add', compact('pageTitle'));
    }
    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'name' => 'required|string',
            'price' => 'required|numeric',
            'credits' => 'required|numeric',
        ]);

        Package::create([
            'name' => $request->name,
            'price' => $request->price,
            'credits' => $request->credits,
        ]);

        // redirect to package index
        return redirect()->route('admin.package.lists')->with('success', 'Package created successfully');
    }
    public function show($id)
    {
        $pageTitle = "Service Details | Petlodger";
        $package = Package::findOrFail($id);
        return view('admin.package.view', compact('package', 'pageTitle'));
    }
    public function edit($id)
    {
        $pageTitle = "Service Edit | Petlodger";
        $package = Package::findOrFail($id);
        return view('admin.package.edit', compact('package', 'pageTitle'));
    }
    public function update(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'id' => 'required',
            'name' => 'required|string',
            'price' => 'required|numeric',
            'credits' => 'required|numeric',
        ]);

        $package = Package::findOrFail($request->id);

        $package->update([
            'name' => $request->name,
            'price' => $request->price,
            'credits' => $request->credits,
        ]);

        return redirect()->route('admin.package.lists')->with('success', 'Package updated successfully');
    }

    public function destroy($id)
    {
        // return $id;
        $package = Package::findOrFail($id);
        $package->delete();

        // return $service;
        return redirect()->route('admin.package.lists')->with('success', 'Package deleted successfully');
    }
}
