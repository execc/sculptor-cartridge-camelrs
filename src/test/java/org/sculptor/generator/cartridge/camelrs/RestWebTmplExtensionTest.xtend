package org.sculptor.generator.cartridge.camelrs

import org.junit.BeforeClass
import org.junit.Test
import org.sculptor.generator.test.GeneratorTestBase

import static extension org.sculptor.generator.test.GeneratorTestExtensions.*

class RestWebTmplExtensionTest extends GeneratorTestBase {
	
	private static val APPLICATION_EXTENSION = "camelrs-application"
	
	new() {
		super(APPLICATION_EXTENSION)
	}
	
	@BeforeClass
	def static void setup() {
		runGenerator(APPLICATION_EXTENSION)
	}
	
	@Test
	def void assertCorrectPackageName() {
		val application = getFileText(TO_GEN_SRC + "/test/rest/RestApplication.java")
		application.assertContains("package test.rest")
	}
}